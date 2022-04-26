library('ggplot2')
library('platetools')
library('viridis')

setwd('/Users/David.Sokol/Desktop/sc_wgbs_comp/laird/20220321_rmgii_scwgbs') #plug in file path here
quant_data = read.csv('rmg_sample_metadata.csv')

raw_map(data = quant_data$concentration_nm,
        well = quant_data$well,
        plate = 96) +
  ggtitle('RMG-2 cell scWGBS library prep') +
  theme_bw() +
  guides(fill = guide_legend(title = 'Concentration (nM)'))
  scale_fill_viridis()