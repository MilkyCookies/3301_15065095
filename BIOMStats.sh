#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "BIOM statistics"
time biom summarize-table -i pickedotus_latest2/otu_table.biom -o biomstats.txt

source deactivate
