# Myeloid-Glioma
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

## Determining the origin of different identities of tumor-associated myeloid cells (Related to Figure 2):

The folder **"MAESTER"** includes the necessary scripts to trace the origin of the myeloid cells in the glioma-microenvironment, as shown in Figure 2 of the manuscript. This folder contains all the codes and instructions required to process the MAESTER libraries fastqs, align them, generate single-cell mitochondrial mutations matrices & depth matrices, pseudobulking these matrices, determine mutations of interest, and measure the enrichment of the mutations of interest in several myeloid identities to trace origins. Codes to generate the visualizations shown in Figure 2 are also included in this folder. The "Required Files" folder contains additional files for running these codes.

## Deconvolving bulk glioma RNA-Seq Libraries (Related to Figure 3):

The folder **"Deconvolution of Bulk Datasets"** includes the necessary scripts and instructions to study the enrichment of the myeloid recurrent expression programs in glioma bulk datasets in TCGA, G-SAM, and GLASS cohorts. This folder contains all the codes and instructions required to create gene sets for defining the programs, calculate the enrichment of these programs in the bulk libraries, imputing the percentage of cell types in each bulk library using CIBERSORTx, and normalizing the module scores using the imputed values. Codes to generate the visualizations shown in Figure 2 are also included in this folder. The "Required Files" folder contains additional files for running these codes.


