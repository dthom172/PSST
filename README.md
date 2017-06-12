# PSST
Polygenic SNP Search Tool

## Overview

Here is what this pipeline does: We are developing a software *pipeline* to **identify multiple SNPs that are associated with diseases**; including SNPs that modify the *penetrance* of other SNPs. We are looking to identify:
* Asserted pathogenic SNPs
* Genome-wide Association Studies (GWAS) identified SNPs
, crossed with database and datasets such as ClinVar, SRA, and GEO, and then build a pipeline for multiple genetic variants associated with diseases.

## Usage

### Step 1:

Finds SNP IDs for top 10 diseases from a list of 100.

### Step 2:

Extracts sequences from these SNP IDs, and also creates seperate fasta files for all the diseases that contains both SNP ID and the respective sequence.

### Step 3:

Makeblastdb for each phenotype.


