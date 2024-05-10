library(spacexr)
library(Matrix)
library(SPATA2)
library(anndata)

workdir<- '/Users/cpc45/Data/GBM/Henrik_spatial/' 
adatadir<- file.path(workdir,'CancerCell','adata')
puckdir <- file.path(workdir,'pucks') 
dir.create(puckdir)

for (f in list.files(adatadir) ) {
  adata <- read_h5ad(file.path(adatadir,f))
  file_split <- strsplit(f,"[.]")[[1]]
  sample <- substr(file_split[1], 6, nchar(file_split[1]))
  
  # extract counts matrix
  counts <- t(as.matrix(adata$X)) 
  colnames(counts) <- row.names(adata$obs)
  row.names(counts) <- row.names(adata$var)
  
  # extract coord
  coords <- as.data.frame(adata$obsm$spatial)
  rownames(coords) <- row.names(adata$obs)
  nUMI <- colSums(counts) # In this case, total counts per pixel is nUMI
  
  ### Create SpatialRNA object
  puck <- SpatialRNA(coords, counts, nUMI)
  
  print(head(puck@coords)) # start of coordinate data.frame
  
  saveRDS(puck, file.path(puckdir,sprintf('puck_%s.rds',sample)))
}
