#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Partial Mantel: phosphorus"
time compare_distance_matrices.py -i corediversity/bdiv_even35586/unweighted_unifrac_dm.txt,distmatr_P -c distmatr_map -o partial_P --method=partial_mantel -n 999

source deactivate
