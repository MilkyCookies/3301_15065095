#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Convert BIOM table"
time biom convert -i otu_table.biom -o otu_table.txt --to-tsv --header-key taxonomy

echo "Convert no-outlier BIOM table"
time biom convert -i no_outliers_otu_table.biom -o no_outlier_otu_table.txt --to-tsv --header-key taxonomy

source deactivate
