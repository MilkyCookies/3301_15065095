#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Compare categories: Moisture"
time compare_categories.py --method anosim -c Moisture -o comparison_Moisture -i corediversity/bdiv_even35586/unweighted_unifrac_dm.txt -m mapping.txt

source deactivate
