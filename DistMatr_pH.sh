#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Distance matrix from mapping file: pH"
time distance_matrix_from_mapping.py -i mapping.txt -c pH -o distmatr_pH

source deactivate
