options(stringsAsFactors = F)
library(ape)
library(devtools)
energyexpenditure = read.csv('data-raw/energyexpenditure.csv')
use_data(energyexpenditure)

tree = read.nexus('data-raw/BinindaEmonds2007.nex')[[1]]

# rename Homo sapiens tip as Homo_sapiens_Hadza
tree$tip.label[tree$tip.label == 'Homo_sapiens'] = 'Homo_sapiens_Hadza'

# fix spelling error for Proteles cristata
tree$tip.label[tree$tip.label == 'Proteles_cristatus'] = 'Proteles_cristata'

# Use Eulemur_fulvus for Eulemur
tree$tip.label[tree$tip.label == 'Eulemur_fulvus'] = 'Eulemur'

# Use Canis_rufus for Canis_familiaris
tree$tip.label[tree$tip.label == 'Canis_rufus'] = 'Canis_familiaris'

# use Chrysochloris_asiatica for Eremitalpa_namibensis
tree$tip.label[tree$tip.label == 'Chrysochloris_asiatica'] = 'Eremitalpa_namibensis'

# use Lemmus_sibiricus for Lemmus_trimucronatus
tree$tip.label[tree$tip.label == 'Lemmus_sibiricus'] = 'Lemmus_trimucronatus'

tips_to_drop = setdiff(tree$tip.label, energyexpenditure$species)
newtree = drop.tip(tree, tips_to_drop)
energyexpendituretree = newtree

use_data(energyexpendituretree)
