library(dplyr)
library(Seurat)
options(bitmapType='cairo')
options(future.globals.maxSize = 8000 * 1024^2)

################### We converted all the raw STARsolo outputs into a tab-delimited text matrix (genes in rows, cells in columns) and merged all these matrices to form a single matrix. The barcodes for each tumor were prefixed with "TumorID_" #########

data <- read.table("All_JAX_220826_Raw_Expression.txt", sep="\t", head=TRUE, row.names=1)

Tumors.combined <- CreateSeuratObject(counts = data, project = "JAX", min.cells = 3, min.features = 200)

Tumors.combined[["percent.mt"]] <- PercentageFeatureSet(Tumors.combined, pattern = "^MT.")

all.genes <- rownames(Tumors.combined)


######## Filtering Low Quality Cells ##############

Tumors.combined <- subset(Tumors.combined, subset = nFeature_RNA > 500 & nFeature_RNA < 6000 & nCount_RNA > 1000 & percent.mt < 25)

pdf("JAX_WT_Mutant_Tumors_QC_AF.pdf", height = 6, width = 20)
VlnPlot(Tumors.combined, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)
dev.off()

######### Normalization, Scaling, Identification of Variable Genes and Regression of % of mito genes, PCA ########

library(sctransform)
Tumors.combined <- SCTransform(Tumors.combined, vars.to.regress = "percent.mt", verbose = TRUE)
Tumors.combined <- RunPCA(Tumors.combined)
pdf("JAX_WT_Mutant_Tumors_ElbowPlot.pdf", height = 6, width = 6)
ElbowPlot(Tumors.combined, ndims=50)
dev.off()

write.table(Tumors.combined@meta.data, file="JAX_WT_Mutant_Tumors_Integrated_MetaData.txt", sep="\t", col.names=NA, quote=FALSE)


################# Louvain Clustering and UMAP Generation ###################


Tumors.combined <- RunUMAP(Tumors.combined, reduction = "pca", dims = 1:16)
Tumors.combined <- FindNeighbors(Tumors.combined, dims = 1:16)
Tumors.combined <- FindClusters(Tumors.combined, resolution = 0.3)


pdf("JAX_WT_Mutant_Tumors_Clusters_With_Labels.pdf", height= 6, width = 7)
DimPlot(Tumors.combined, reduction = "umap", label=TRUE)
dev.off()

pdf("JAX_WT_Mutant_Tumors_UMAP_Patient_ID.pdf", height= 6, width = 9)
DimPlot(Tumors.combined, reduction = "umap", group.by="orig.ident")
dev.off()


write.table(Tumors.combined@meta.data, file="JAX_WT_Mutant_Tumors_Integrated_MetaData.txt", sep="\t", col.names=NA, quote=FALSE)


saveRDS(Tumors.combined, file="JAX_Brain_Tumors.rds")
