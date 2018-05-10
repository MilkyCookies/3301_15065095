#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Summarise biom table qualitatively"
time biom summarize-table -i pickedotus_latest2/no_outliers_otu_table.biom --qualitative -o otu_summary_qual.txt

source deactivate
