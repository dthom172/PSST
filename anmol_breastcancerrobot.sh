#!/bin/bash

### Breast Cancer Robot


# Find SNP IDs:

esearch -query breast-ovarian_cancer -db pubmed | elink -target snp | esummary | xtract -pattern DocumentSummary -element SNP_ID


# Extract SNP Sequences:

echo ">"$1"_SEQ" >> breast_cancer_snp_list.foo

esearch -query $1 -db snp | esummary | xtract -pattern DocumentSummary -element DOCSUM | egrep -o 'SEQ[^|]+' | sort -u | awk -F"SEQ=" '{print $2}' | sed 's/\[//' | sed 's/\/\w\]//' | sed 's/\///g' >> breast_cancer_snp_list.foo


# Makeblastdb:

makeblastdb -dbtype nucl -in breast_cancer_snp_list.foo 


