#!/bin/bash
#SBATCH -t 2:00:00
#SBATCH -n 24
#SBATCH -p normal         
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp
             
echo "join paired ends"
time join_paired_ends.py -m SeqPrep -f Read1.fastq.gz -r Read2.fastq.gz -b Index.fastq.gz -o ReadFinal2

source deactivate
