library(spacexr)
library(Matrix)

workdir<- '/Users/cpc45/Data/GBM/Henrik_spatial'
puckdir <- file.path(workdir,'pucks')
RCTD_dir <- file.path(workdir,'RCTD')
dir.create(RCTD_dir, showWarnings = FALSE)

reference<- readRDS(file.path(workdir,'SCRef.rds'))

for (f in list.files(puckdir) ) {
  patient_sample <- substr(f, 6, nchar(f)-4) # get sample name from file name
  
  puck<-readRDS(file.path(workdir,'pucks',sprintf('puck_%s.rds',patient_sample)))
  
  myRCTD <- create.RCTD(puck, reference, max_cores = 4)
  myRCTD <- run.RCTD(myRCTD, doublet_mode = 'full')
  saveRDS(myRCTD, file.path(RCTD_dir,sprintf('RCTD_%s.rds',patient_sample)))
}