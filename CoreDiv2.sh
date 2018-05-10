#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Core diversity"
time core_diversity_analyses.py -i pickedotus_latest2/no_outliers_otu_table.biom -t SILVA_132_QIIME_release/trees/97/97_otus.tre -m mapping.txt -e 35586 -a -O 16 -o corediversity

source deactivate
