#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Splitting libraries openref"
time split_libraries_fastq.py --barcode_type 12 -i ReadFinal2/seqprep_assembled.fastq.gz -b ReadFinal2/seqprep_assembled.fastq_barcodes.fastq -m map_incomplete.tsv -o sliva_prepicking

echo "Counting sequences openref"
time count_seqs.py -i ~/2018_02_smb/sliva_prepicking/seqs.fna

source deactivate
