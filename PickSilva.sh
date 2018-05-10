#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Third Latest OTU Picking with SILVA"
time pick_closed_reference_otus.py -i sliva_prepicking/seqs.fna -p parameters.txt -a -O 16 -o pickedotus_latest3

source deactivate
