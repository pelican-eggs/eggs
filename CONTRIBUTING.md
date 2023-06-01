# How to contribute

You can contribute by either creating a new pull request or testing [existing pull requests](https://github.com/parkervcp/eggs/pulls) and commenting on whether the egg works for you or not. Testing is very important and helpful!

## General rules for eggs

1. Don't be afraid to submit PR's to the egg repo.
    I don't bite. I will work with you on the egg and the required things to run it. Feel free to open a draft PR if you don't quite have the egg finished yet by yourself.

2. Keep it secure.
    No start scripts that a user can edit.
    If a start script is needed it should be part of a yolk.

3. Keep it simple.
    We don't need 8 miles of the install script.

4. Keep it small.
    Only use what is absolutely needed. The [yolks install images](https://github.com/parkervcp/yolks#installation-images) already contain the most basic packages that speeds up the installation process.

5. Use the stock images.
    If you need something in an image, open a PR in [my yolks repo](https://github.com/parkervcp/yolks) where it can be reviewed and built. Self-hosted or third-party images won't be accepted for security reasons.

6. Export eggs from the panel
    We ask that you use the panel to manage and export eggs.
    This keeps the egg format correctly

### Sources for working on a new egg

Look at existing eggs to see how they work. In most cases, you can take the existing egg as your new template. There's a brief documentation on how to [create eggs](https://pterodactyl.io/community/config/eggs/creating_a_custom_egg.html) and [Docker images](https://pterodactyl.io/community/config/eggs/creating_a_custom_image.html).

Use existing Docker images for your egg. You can find them in [Parkers Yolks fork](https://github.com/parkervcp/yolks) and [Pterodactyl Yolks](https://github.com/pterodactyl/yolks).

We have a collection of [existing install script snippets](https://github.com/parkervcp/eggs/tree/master/scripts) that you can use.

## Step 1

### Be aware of the pterodactyl install process

The Pterodactyl install process is fairly simple once you know it.

```md
1. Spin up install container
    Creates a new container using an install image that's run as root.
    Uses a volume mount on `/mnt/server` for the server files, which is the working directory during installation.
    The volume will be later mounted as `/home/container` for the server container. Any files outside of `/mnt/server` will be gone after installation.
    Install script can pull files or set up all that is needed to run the server, such as writing files, directories or compiling apps.
    It is regularly used to just download the files required. Such as server files and configs.


2. Stop and destroy install container

3. Start a new container with the server files in /home/container
    This is where the server is actually run. No root privileges.
    Any dependencies installed during the install process are gone.
    The container that is started should have everything you need.
    No packages can be installed. Any required dependencies must exist in the used Docker image.
```

## Step 2

### Testing

Make sure your install process is rock solid as eggs will be tested before they are merged.

Suggestions and changes will be made at will.  
This is to maintain a clean repo that others can pull and be fully aware of what is being done.

## Step 3

### Make a branch and do your work in there

I have been getting messy PR's due to people always PRing from their master branch. Please make a separate branch and PR from there.

## Step 4

Open a new pull request and fill in the template. Make sure that the readme files have been updated to include the new egg.
