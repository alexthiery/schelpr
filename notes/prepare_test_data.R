library(dplyr)
library(Seurat)
library(patchwork)

# Load the PBMC dataset
pbmc.data <- Read10X(data.dir = "./notes/test_data/pbmc/filtered_gene_bc_matrices/hg19/")
# Initialize the Seurat object with the raw (non-normalized data).
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)

# Subset 500 cells
pbmc <- subset(x = pbmc, downsample = 500)

# Randomly subset 5000 genes
pbmc[sort(sample(1:nrow(pbmc), size=5000)),]


# Artificially change orig.ident to add extra samples for testing scHelper functions
pbmc@meta.data$orig.ident <- factor(c(rep("sample_a", 200), rep("sample_b", 150), rep("sample_c", 150)))

# Add % MT
pbmc[["percent.mt"]] <- PercentageFeatureSet(pbmc, pattern = "^MT-")


# Re-run findvariablefeatures and scaling
pbmc <- FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000, assay = 'RNA')

pbmc <- ScaleData(pbmc)

usethis::use_data(pbmc, overwrite = TRUE)



# save(seurat_data, './tests/testthat/test_data/scaled_seurat.RDS')