FROM  alexthiery/schelpr:base-0.0.1

LABEL authors="alex.thiery@crick.ac.uk" \
        description="Docker image containing requirements for schelpr"

# Install basic linux libraries and extras required to build R packages
RUN R -e "install.packages('Seurat')"