library(spacexr)
library(Matrix)

workdir<- '/Users/cpc45/Data/GBM/Henrik_spatial' 
RCTDir<-file.path(workdir,'RCTD')
write_dir<-file.path(workdir,'RCTD_csv')
dir.create(write_dir)

for (f in list.files(RCTDir) ) {
  sample_id <- substr(f, 6, nchar(f)-4) # get sample name from file name
  myRCTD<- readRDS(file.path(RCTDir,sprintf('RCTD_%s.rds',sample_id)))
  results <- myRCTD@results
  
  # normalize the cell type proportions to sum to 1.
  norm_weights = normalize_weights(results$weights) 
  norm_weights = as.matrix(norm_weights)
  
  write.csv(norm_weights, file.path(write_dir,sprintf('RCTD_%s.csv',sample_id)))
}
