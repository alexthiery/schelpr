
# required for development
roxygen2
usethis
devtools

# suggest on installation
testthat (>= 3.0.0)

# required for package


# linux libraries to install for building package
```bash
apt-get update \
    && install -y --no-install-recommends \
    apt-utils \
    libxtst6 \
    vim
```

# linux libraries to install for Seurat
```bash
apt-get install -y --no-install-recommends \
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
```

# check if linux library is installed
`dpkg -L libxtst6`

# init .Rprofile and add R commands

setwd on R startup
`echo 'setwd("/home/rstudio/")' >> /root/.Rprofile`