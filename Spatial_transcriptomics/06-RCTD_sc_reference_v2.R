library(spacexr)
library(Matrix)
library(data.table)

# single-cell reference

workdir <- '/Users/cpc45/Data/GBM/Henrik_spatial' 
datadir <- '/Users/cpc45/Data/GBM/Bernstein_SeqWell/Discrete_March2023'
metadata <- read.table(file.path(datadir, "Discrete4_Final_MetaData.txt"), 
                   sep='\t', header = TRUE, row.names = 1) # load in annotation matrix
counts <- fread(file.path(datadir, "discrete4_mgb_raw_counts.txt"), 
                sep='\t') # load in counts matrix

genes <- as.matrix(counts[,1]); counts[,1]<-NULL
barcodes<-colnames(counts)
cell_types<-metadata[barcodes,]$Annotation
cell_types <- as.factor(cell_types) # convert to factor data type

names(cell_types)<- barcodes

counts <- apply(counts, 2, function(x) as.numeric(as.character(x)))
counts<-as.data.frame(counts); rownames(counts)<-t(genes); colnames(counts)<-barcodes
nUMI <- colSums(counts)

### Create the Reference object
reference <- Reference(counts, cell_types, nUMI)

## Examine reference object (optional)
print(dim(reference@counts)) #observe Digital Gene Expression matrix

table(reference@cell_types) #number of occurences for each cell type

## Save RDS object (optional)
saveRDS(reference, file.path(workdir,'SCRef.rds'))
