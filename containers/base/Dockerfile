FROM  rocker/tidyverse:4.2.1

LABEL authors="alex.thiery@crick.ac.uk" \
        description="Docker image containing requirements for schelpr"

# Install basic linux libraries and extras required to build R packages
RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        libxtst6 \
        vim

# Install linux libraries listed in Satija Seurat docker image
RUN apt-get install -y --no-install-recommends \
        libhdf5-dev \
        libcurl4-openssl-dev \
        libssl-dev \
        libpng-dev \
        libboost-all-dev \
        libxml2-dev \
        openjdk-8-jdk \
        python3-dev \
        python3-pip \
        wget \
        git \
        libfftw3-dev \
        libgsl-dev \
        libgeos-dev \
        libglpk-dev