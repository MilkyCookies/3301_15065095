#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Compute core microbiome"
time compute_core_microbiome.py -i pickedotus_latest2/no_outliers_otu_table.biom -o coremicrobiome --mapping_fp mapping.txt

source deactivate
