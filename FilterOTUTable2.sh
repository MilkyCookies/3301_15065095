#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Filtering high-abundance sample"
time filter_samples_from_otu_table.py -i nolow_otu_table.biom -o no_outliers_otu_table.biom --sample_id_fp ids2.txt --negate_sample_id_fp

source deactivate
