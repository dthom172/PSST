# PSST
Polygenic SNP Search Tool

## Overview

Here is what this pipeline does: We are developing a software *pipeline* to **identify multiple SNPs that are associated with diseases**; including SNPs that modify the *penetrance* of other SNPs. We are looking to identify:
* Asserted pathogenic SNPs
* Genome-wide Association Studies (GWAS) identified SNPs
, crossed with database and datasets such as ClinVar, SRA, and GEO, and then build a pipeline for multiple genetic variants associated with diseases.

## Usage

### Step 1:

This script finds SNP IDs for top 10 diseases from a list of 100 disease phenotypes that have the SNPs associated with the disease and are asserted to be pathogenic.

### Step 2:

Extract flanking sequences for these SNP IDs, and also create seperate fasta files for each disease containing both the SNP IDs and the respective sequences.

### Step 3:

Use makeblastdb to generate a database for each phenotype.

### Step 4:

Perform alignment with magicblast using SRA accessions associated with disease phenotype. 


