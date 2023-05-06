#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>
#include <sys/stat.h>

void print_latest_log(const char* log_directory, off_t* last_pos, time_t* last_time) {
    DIR *dir;
    struct dirent *entry;
    time_t latest_time = 0;
    char latest_file[256];

    dir = opendir(log_directory);
    if (dir == NULL) {
        printf("Error opening directory %s\n", log_directory);
        return;
    }

    while ((entry = readdir(dir)) != NULL) {
        if (strstr(entry->d_name, "SnMDedSrv-") == entry->d_name &&
            strstr(entry->d_name, ".log") != NULL) {
            char filename[256];
            sprintf(filename, "%s/%s", log_directory, entry->d_name);
            struct stat file_stat;
            stat(filename, &file_stat);
            if (file_stat.st_mtime > latest_time) {
                latest_time = file_stat.st_mtime;
                strcpy(latest_file, filename);
            }
        }
    }

    if (latest_time == 0) {
        printf("No log files found in directory %s\n", log_directory);
        return;
    }

    if (latest_time <= *last_time) {
        return;
    }

    int fd = open(latest_file, O_RDONLY);
    if (fd < 0) {
        printf("Error opening file %s\n", latest_file);
        return;
    }

    // Move the file pointer to the last printed position
    lseek(fd, *last_pos, SEEK_SET);

    char buffer[4096];
    int bytes_read;
    int last_line_printed = 0; // Flag to check whether we have printed the last line
    do {
        bytes_read = read(fd, buffer, sizeof(buffer));
        if (bytes_read > 0) {
            // Check if the last character is a newline
            if (buffer[bytes_read - 1] == '\n') {
                fwrite(buffer, 1, bytes_read, stdout);
                fflush(stdout);
            } else {
                // If the last character is not a newline, add one
                char* temp = (char*) malloc(bytes_read + 1);
                memcpy(temp, buffer, bytes_read);
                temp[bytes_read] = '\n';
                fwrite(temp, 1, bytes_read + 1, stdout);
                fflush(stdout);
                free(temp);
            }
            last_line_printed = (buffer[bytes_read - 1] == '\n');
        }
    } while (bytes_read > 0);

    // If the last line was not printed, print it now
    if (!last_line_printed) {
        printf("\n");
    }

    // Remember the last position and time that was read
    *last_pos = lseek(fd, 0, SEEK_CUR);
    *last_time = latest_time;

    close(fd);
}




int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Usage: winewrapper wine_path wine_args exe_path exe_args\n");
        return 0;
    }

    char* wine_path = argv[1];

    pid_t pid = fork();
    if (pid == 0) {
        char** wine_argv = (char**) malloc(sizeof(char*) * (argc - 1));
        wine_argv[0] = wine_path;
        for (int i = 2; i < argc; i++) {
            wine_argv[i - 1] = argv[i];
        }
        wine_argv[argc - 1] = NULL;
        execv(wine_path, wine_argv);
        printf("Error launching wine process\n");
        exit(1);
    } else if (pid < 0) {
        printf("Error forking process\n");
        exit(1);
    }

    sleep(30);
    
    off_t last_pos = 0;
    off_t last_size = 0;
    char* log_directory = "/home/container/SNM2020/Saved/Logs";
    print_latest_log(log_directory, &last_pos, &last_size);

    
    while (1) {
        sleep(1);
        print_latest_log(log_directory, &last_pos, &last_size);
    }

    kill(pid, SIGTERM);

    return 0;
}