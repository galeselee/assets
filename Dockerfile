FROM rocm/dev-ubuntu-20.04:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && add-apt-repository -y ppa:git-core/ppa && apt-get update && \
    apt-get install -y python3-pip \
                       libtinfo-dev \
                       sudo \
                       clang-10 \
                       lld-10 \
                       wget \
                       git \
                       unzip \
                       ffmpeg \
                       libxrandr-dev \
                       libxinerama-dev \
                       libxcursor-dev \
                       libxi-dev \
                       libglu1-mesa-dev \
                       freeglut3-dev \
                       mesa-common-dev \
                       libssl-dev \
                       libglm-dev \
                       libxcb-keysyms1-dev \
                       libxcb-dri3-dev \
                       libxcb-randr0-dev \
                       libxcb-ewmh-dev \
                       libpng-dev \
                       g++-multilib \
                       libmirclient-dev \
                       libwayland-dev \
                       bison \
                       libx11-xcb-dev \
                       liblz4-dev \
                       libzstd-dev \
                       qt5-default \
                       libglfw3 \
                       libglfw3-dev \
                       libjpeg-dev \                  
                       && \
    printf "root ALL=(ALL:ALL) NOPASSWD: ALL\ndev ALL=(ALL:ALL) NOPASSWD: ALL\n" > /etc/sudoers && \
    true

RUN ln -sf /usr/bin/clang++-10 /usr/bin/clang++ && \
    ln -sf /usr/bin/clang-10 /usr/bin/clang && \
    ln -sf /usr/bin/ld.lld-10 /usr/bin/ld.lld
