library(dplyr)
library(Seurat)
library(patchwork)

# Load the PBMC dataset
pbmc.data <- Read10X(data.dir = "./notes/test_data/pbmc/filtered_gene_bc_matrices/hg19/")
# Initialize the Seurat object with the raw (non-normalized data).
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)

# Artificially change orig.ident to add extra samples for testing scHelper functions
pbmc@meta.data$orig.ident <- factor(c(rep("sample_a", 900), rep("sample_b", 900), rep("sample_c", 900)))

# Add % MT
pbmc[["percent.mt"]] <- PercentageFeatureSet(pbmc, pattern = "^MT-")