#' Enamel thickness and other molar data for hominoids.
#' 
#' A dataset containing enamel thickness, enamel area, and other data (see
#' below) for 195 specimens representing 13 species of hominoids.
#' 
#' @usage \code{data(enamelthickness)}
#' @format A data frame with 195 rows and 9 variables: 
#' \describe{ 
#'   \item{accession}{specimen identifier} 
#'   \item{taxon}{hominoid species} 
#'   \item{tooth}{mandibular molar M1, M2, or M3} 
#'   \item{enamel_area}{enamel area, in mm squared} 
#'   \item{dentine_area}{dentine area, in mm squared} 
#'   \item{edj_length}{enamel-dentine junction length, in mm} 
#'   \item{bcd}{bi-cervical diameter, in mm} 
#'   \item{aet}{average enamel thickness, in mm} 
#'   \item{ret}{relative enamel thickness} 
#' }
#' @source Skinner MM, Alemseged Z, Gaunitz C, Hublin J-J. 2015. Enamel
#'   thickness trends in Plio-Pleistocene hominin mandibular molars.
#'   \emph{Journal of Human Evolution} 85:35-45. 
#'   \url{http://dx.doi.org/10.1016/j.jhevol.2015.03.012}
#'   
#'   The data were extracted from the supplementary material. The following
#'   modifications were made:
#'   \itemize{
#'     \item citation and basis for tooth identification columns dropped \item
#'     consolidated LM1 and RM1 into just M1, and the same for M2 and M3; none
#'     of the analyses in the paper itself differentiate between right and left 
#'     \item fixed an apparent error in the values for bcd, aet, and ret for the
#'     specimens of unknown taxonomic attribution (column values were rotated)
#'   }
#' @examples 
#' boxplot(aet ~ taxon, data=enamelthickness, 
#'                      las=2, cex.axis=0.65)
"enamelthickness"

#' Total energy expenditure and mass for mammals.
#' 
#' A dataset containing total daily energy expenditure and mass for 86 species
#' of mammals.
#' 
#' @usage \code{data(energyexpenditure)}
#' @format A data frame with 86 rows and 5 variables: 
#' \describe{ 
#'   \item{species}{species name} 
#'   \item{order}{mammalian order} 
#'   \item{captive}{yes, no, or unknown} 
#'   \item{mass}{in kg} 
#'   \item{tee}{total energy expenditure, in kcalories/day} 
#' }
#' @seealso \code{\link{energyexpendituretree}} - a matching newick format
#'   tree for phylogenetic regression.
#' @source Pontzer H, Raichlin DA, Gordon AD, Schroepfer-Walker KK, Hare B, 
#'   O'Neill MC, Muldoon KM, Dunsworth HM, Wood BM, Isler K, Burkart J, Irwin M,
#'   Shumaker RW, Lonsdorf EV, Ross SR. 2014. Primate energy expenditure and
#'   life history. \emph{Proc Natl Acad Sci USA} 111:1433-1437. 
#'   \url{http://dx.doi.org/10.1073/pnas.1316940111}
#'   
#'   The data were extracted from the supplementary material. The following
#'   modifications were made:
#'   \itemize{
#'     \item renamed the admixed \emph{Eulemur sp.} as \emph{Eulemur}
#'     \item dropped the second \emph{Peromyscus maniculatus} data point (which
#'     was not used in primate - nonprimate comparisons in Pontzer et al.)
#'     \item \emph{Eremitalpa namibensis} is not a rodent, it's an Afrosoricid 
#'   }
#' @examples 
#' boxplot(aet ~ taxon, data=enamelthickness, 
#'                      las=2, cex.axis=0.65)
"energyexpenditure"

#' Phylogenetic tree for 81 mammalian species.
#' 
#' A phylogenetic tree for 81 mammalian species in the 
#' \code{\link{energyexpenditure}} dataset.
#' 
#' @format A phylogenetic tree in the \code{ape} \code{\link[ape]{phylo}}
#'   format.
#' @usage \code{data(energyexpendituretree)}
#' @seealso \code{\link{energyexpenditure}} - a matching dataset of mammalian
#'   mass and total energy expenditure.
#' @source Bininda-Emonds ORP, Cardillo M, Jone KE, MacPhee RDE, Deck RMD,
#'   Grenyer R, Price SA, Vos RA, Gittleman JL, Purvis A. The delayed rise of
#'   present-day mammals. \emph{Proc Natl Acad Sci USA} 111:1433-1437. 
#'   \url{http://dx.doi.org/10.1038/nature05634}
#'   
#'   The tree was taken from the supplementary material. The following
#'   modifications were made:
#'   \itemize{
#'     \item reduced to taxa present in the \code{\link{energyexpenditure}}
#'     dataset.
#'     \item \emph{Euleumur fulvus} used as the tip for the admixed
#'     \emph{Eulemur} group
#'     \item \emph{Proteles cristatus} renamed to \emph{Proteles cristata} (typo
#'     in source)
#'     \item \emph{Homo sapiens} renamed to \emph{Homo sapiens} Hadza
#'     \item \emph{Canis rufus} used for \emph{Canis familiaris}
#'     \item \emph{Chrysochloris asiatica} used for \emph{Eremitalpa namibensis}
#'     \item \emph{Lemmus sibiricus} used for \emph{Lemmus trimucronatus}
#'   }
#' @examples 
#' plot(energyexpendituretree, cex=0.5)
"energyexpendituretree"