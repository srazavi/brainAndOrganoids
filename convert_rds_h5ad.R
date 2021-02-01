library(Seurat)
library(SeuratDisk)
library(SingleCellExperiment)

# Converting from Seurat object to H5AD
data <- readRDS(file = "org.combinedR2_clusters_names.rds")
SaveH5Seurat(data, filename = "org.combinedR2_clusters_names.h5Seurat")
Convert("org.combinedR2_clusters_names.h5Seurat", dest = "h5ad", overwrite = T)


# Converting from SingleCellExperiment object to H5AD
data <- readRDS(file = "manno_human.rds")
data.seurat <- as.Seurat(data, counts = "counts", data = "logcounts")
SaveH5Seurat(data.seurat, filename = "manno_human.h5Seurat")
Convert("manno_human.h5Seurat", dest = "h5ad", overwrite = T)
