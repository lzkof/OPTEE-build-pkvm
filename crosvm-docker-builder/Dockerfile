# Use Ubuntu 20.04 as the base image
FROM debian:12

# Define build arguments for username and UID, with defaults
ARG USERNAME=devuser
ARG UID=1000

# Update package list and install build-essential and sudo
RUN apt-get update && apt-get install -y \
    build-essential \
    sudo

# Create a new user with the specified UID and no password
RUN adduser --disabled-password --uid ${UID} ${USERNAME}

# Add the user to the sudo group
RUN usermod -aG sudo ${USERNAME}

# Configure sudo to allow the user to run commands without a password
RUN echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} && \
    chmod 0440 /etc/sudoers.d/${USERNAME}

RUN sudo dpkg --add-architecture arm64

RUN sudo apt update

# Set the default user to the new user
USER ${USERNAME}
