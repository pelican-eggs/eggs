FROM ubuntu:18.04

MAINTAINER CastBlacKing, <thewagaming@gmail.com>

RUN apt update && apt upgrade -y
RUN apt install -y wget sudo curl tar zip unzip sed apt-utils ca-certificates
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb && apt update -y && apt install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0 libgdiplus

RUN adduser -disabled-password -home /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

RUN dotnet tool update uMod --version "*-*" --global --add-source https://www.myget.org/f/umod/api/v3/index.json
RUN dotnet new -i "uMod.Templates::*-*" --nuget-source https://www.myget.org/f/umod/api/v3/index.json &>/dev/null

RUN export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
RUN echo "DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1; export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT" >> ~/.profile
RUN export PATH="$PATH:$HOME/.dotnet/tools"
RUN export PATH="$PATH:/home/container/.dotnet/tools"
RUN echo "PATH=\$PATH:\$HOME/.dotnet/tools; export PATH" >> ~/.profile

RUN ~/.dotnet/tools/umod complete --install

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
