# Programs, Origins, and Niches of Immunomodulatory Myeloid Cells in Gliomas
This GitHub repository includes all scripts used to perform the analyses to study the Biology of Myeloid Cells in Glioma Microenvironments as per the methods section of: ....
The steps are numbered in each folder according to the order in which they must be implemented.


## Processing of the Single-cell RNA-Seq libraries (Related to Figure 1):

The folder **"Processing of scRNA-Seq Files (Related to Figure 1)"** includes the necessary steps to analyze the scRNA-Seq libraries. This folder contains all the codes required to align the fastq files, generate expression matrices, process the cells in the gene expression matrices, annotate the cells, determine CNVs, identify doublets, perform batch correction for the myeloid cells in the MGB cohort, and generate UMAPs. The "Required Files" folder includes additional files to run these codes.

## Identifying recurrent expression programs in Glioma-associated myeloid cells (Related to Figure 1):

The folder **"Identifying recurrent programs in Myeloid Cells in Gliomas (Related to Figure 1)"** includes the necessary scripts and instructions to identify the recurrent expression programs in Tumor-associated myeloid cells using cNMF. This folder contains all the codes required to identify variable genes in the myeloid cells expression matrix in each cohort, run cNMF to clean out these expression matrices, unify the genes to be included for the second round of cNMF, identify the gene expression programs in the myeloid cells of each discovery cohort and identifying the consensus cNMF programs across the discovery cohorts. The "Required Files" folder includes additional files to run these codes.

## Generating Gene Expression heatmaps for the myeloid programs in MGB and McGill Cohorts (Related to Figure 1):

The folder **"Figure 1 Visualizations"** includes the necessary scripts and instructions to generate the gene expression heatmaps shown in Figure 1. This folder contains all the codes and instructions required to determine the frequency of the expression of the genes associated with the consensus programs and generate the heatmaps. The "Required Files" folder includes additional files to run these codes.


## Generating the tumor-associated myeloid cells Quadrant Plots (Related to Figure 1):

The folder **"Figure 1 Visualizations"** includes the necessary scripts and instructions to generate the quadrant plots displayed in Figure 1 and its associated supplementary figures. This folder contains all the codes and instructions required to calculate the values of the X and Y axes. The "Required Files" folder includes additional files for running these codes.

## Determining the origin of different identities of tumor-associated myeloid cells (Related to Extended Figure 5):

The folder **"MAESTER"** includes the necessary scripts to trace the origin of the myeloid cells in the glioma-microenvironment, as shown in Figure 2 of the manuscript. This folder contains all the codes and instructions required to process the MAESTER libraries fastqs, align them, generate single-cell mitochondrial mutations matrices & depth matrices, pseudobulking these matrices, determine mutations of interest, and measure the enrichment of the mutations of interest in several myeloid identities to trace origins. Codes to generate the visualizations shown in Figure 2 are also included in this folder. The "Required Files" folder contains additional files for running these codes.


## Spatial Transcriptomics (Related to Figure 2):

The folder **"Spatial_transcriptomics"** includes the necessary scripts to deconvolve the transcriptomic images into two different representations: niches and cell contents. Niches are obtained unbiasedly using cNMF, while cell content is deconvolved into the states present in the discrete scRNA-seq using RCTD. The relationship of niches and cells states is then measured though correlations. The spatial relationship of the cells and that of the niches is determined using spatially-informed regressions (see Methods).


## Discretinize the MGB cohort gene expression matrix (Related to Figures 2-4):

The folder **"Creation of discretized scRNA-Seq Expression matrix"** includes all the necessary scripts and instructions to extract cells that are enriched in the usage of one cNMF program. The steps help in the identification of markers defining each program (i.e. Using COMET and SCENIC).


## Deconvolving bulk glioma RNA-Seq Libraries (Related to Figure 3):

The folder **"Deconvolution of Bulk Datasets"** includes the necessary scripts and instructions to study the enrichment of the myeloid recurrent expression programs in glioma bulk datasets in TCGA, G-SAM, and GLASS cohorts. This folder contains all the codes and instructions required to create gene sets for defining the programs, calculate the enrichment of these programs in the bulk libraries, imputing the percentage of cell types in each bulk library using CIBERSORTx, and normalizing the module scores using the imputed values. Codes to generate the visualizations shown in Figure 2 are also included in this folder. The "Required Files" folder contains additional files for running these codes.


## Studying the enrichment of the myeloid programs in glioma patients responding to immunotherapy vs glioma patients that are not responding to it (Related to Figure 3):

The folder **"Analysis of Glioma Immunotherpay scRNA-Seq Libraries"** includes the necessary scripts and instructions to study the enrichment of the myeloid recurrent expression programs in the myeloid cells of glioma patients responding and not-responding to immunotheraphy (Mei et al., 2023). This folder contains all the codes and instructions required to extract the myeloid cells from their gene expression object, calculate the enrichment of the recurrent myeloid programs in their dataset, and then determining the statistical significance of the programs associated with non-responding phenotype. The scripts required to visualize the results are also included in this folder.

## Analysis of the scATAC-Seq libraries (Related to Figure 4):

The folder **"scATAC-Seq Analyses"** includes the necessary scripts and instructions to identify the chromatin accessibility profiles of myeloid cells enriched with the immunomodulatory programs. This folder contains all the codes and instructions required to extract high-quality myeloid cells from each snATAC-Seq library, extracting the discrete myeloid cells, determine the specific accessible loci in each discrete population, identify transcription factors enriched in the specific loci and visualize the results in heatmaps and genome browser.

## Analysis of GBO scRNA-Seq Libraries (Related to Figure 5): 

The folder **"Processing of GBO scRNA-Seq libraries (Related to Figure 7)"** includes the necessary scripts and instructions to identify the enrichment of recurrent expression programs in glioma brain organoids (GBOs). align the fastq files, generate expression matrices, process the cells in the gene expression matrices, annotate the cells, identify doublets, extract high-quality myeloid cells, and then determine the differences in enrichment of the myeloid immunomodulatory programs in GBO treated with GBO vs myeloid cells in GBOs treated with DEX (Steroid treatment) or GNE (p300 inhibitor).


## Analysis of the Bulk ATAC-Seq libraries (Related to Figure 5):

The folder **"Bulk ATAC-Seq Analysis"** includes the necessary scripts and instructions to identify the chromatin accessibility profiles of myeloid cells in organoids treated with DMSO vs p300 inhibitor (GNE). This folder contains all the codes and instructions required to preprocess the fastqs, align the librareis, process the aligned libraries, identify accessible loci, generate genome browser files, identify differentially acessible loci, and identify motifs enriched in the differential accessible loci.


**These codes are developed and maintained by Chadi A. El Farran, M.Sc., Ph.D. (Chadi.ElFarran@stjude.org), and Charles P. Couturier (ccouturi@broadinstitute.org), M.D., Ph.D. with significant contributions from Tyler E. Miller, M.D., Ph.D.**

