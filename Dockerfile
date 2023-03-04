FROM node:lts-bullseye

WORKDIR /usr/src/app

RUN apt update && apt upgrade -y

# update npm
RUN npm install -g npm

# install starship
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes && \
    echo eval "$(starship init bash)" >> ~/.bashrc