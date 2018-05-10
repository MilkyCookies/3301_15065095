# 3301_assignment

The resulting files from every job script file can be easily mapped to each step in the QIIME pipeline and the statistical tests described in the Results Section starting from Read1, Read2, Index, and mapping files. The following 
- Read pairing: pairing.sh
- Demultiplexing & counting sequences: SplitCount.sh
- Quality filtering: FilterOTUTable.sh, FilterOTUTable2.sh, ConvertOTUTable.sh (these are in the folder "pickedotus_latest2"). The files ids.txt and ids2.txt were sequentially used for quality filtering
- Summarising BIOM statistics: BIOMStats.sh, BIOMStats_outliers.sh, CoreSumm.sh
- OTU picking: PickSilva.sh
- Diversity analyses: CoreDiv2.sh
- Finding and plotting the core microbiome: CoreMicrobiom.sh, MakeHeatmap_core.sh
- ANOSIM tests: Comparex.sh where x is a category name
- Distance matrices for each quantitative category: DistMatr_x.sh where x is a category abbreviation. DistMatr_map.sh plotted for the longitutde which is the control distance matrix in the partial Mantel test
- Partial Mantel tests: PartialMantel_x.sh where x is a category abbreviation

Since partial Mantel tests required numerical values for K, N, and P levels, colour schemes of Trace, Trace-Low, Low, Low-Medium, Medium, Medium-High, and High were converted to a numerical scheme of 1, 1.5, 2, 2.5, 3, 3.5, and 4, respectively. These changes were made into a separate file called mapping_mantel.txt

As the Conclusions Section stated, the mapping file's qualitative categories were largely summarised from individual descriptions by the teams. Those teams' original script lies in the file map_incomplete.tsv but was not used for diversity analyses and the statistical tests. An accurately summarised mapping file created new categories and succint, meaningful characterisation out of their descriptions into a separate file called mapping.txt 

mapping.txt was used for diversity analyses and statistical tests

MAY 2018
                                                        😊END 😊
