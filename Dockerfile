FROM ubuntu:focal

RUN apt update -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y curl cryptsetup software-properties-common && \
    add-apt-repository -y ppa:apptainer/ppa && \
    apt update -y && \
    apt install -y apptainer apptainer-suid && \
    rm -rf /var/lib/apt/lists/*
