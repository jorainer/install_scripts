## installing Bioconductor packages...
source( "http://www.bioconductor.org/biocLite.R" )
##source( "/Volumes/jodata/mirror/biocLite.R" )

biocLite()
## what if library(BiocInstaller) and useDevel()

cat("\nnow installing additional packages...\n")
packs <- read.table( "./packages.txt", sep="\t", as.is=TRUE )[,1]

biocLite( packs )

cat("\n\nInstalling stuff from github:\n")
library(devtools)
install_github("jotsetung/unsoRted")
install_github("jotsetung/mirtarbase-db")
install_github("jotsetung/generalgcrma")
install_github("jotsetung/GenomePlotR")


cat( "\nfinished\njust check warnings() if some packages did not install\n" )



