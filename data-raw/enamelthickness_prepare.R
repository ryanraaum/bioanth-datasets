options(stringsAsFactors = F)
library(devtools)
enamelthickness = read.csv('data-raw/enamelthickness.csv')
use_data(enamelthickness)
