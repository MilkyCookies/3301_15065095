#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p normal
module load eb
module load Miniconda2
source activate qiime1
export TMPDIR=~/qiime_tmp

echo "Making heatmap"
time make_otu_heatmap.py -i coremicrobiome/core_table_100.biom --color_scheme bwr -o heatmap_core2.pdf --height 8 -m mapping.txt -t SILVA_132_QIIME_release/trees/97/97_otus.tre

source deactivate
