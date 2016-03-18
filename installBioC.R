## installing Bioconductor packages...
source( "http://www.bioconductor.org/biocLite.R" )
##source( "/Volumes/jodata/mirror/biocLite.R" )

biocLite()
## what if library(BiocInstaller) and useDevel()

cat("\nnow installing additional packages...\n")
packs <- read.table( "./packages.txt", sep="\t", as.is=TRUE )[,1]

biocLite(packs)

cat("\n\nInstalling stuff from github:\n")
library(devtools)
install_github("jotsetung/unsoRted")
##install_github("jotsetung/mirtarbase-db")
install_github("jotsetung/generalgcrma")
install_github("jotsetung/GenomePlotR")
install_github("jotsetung/mirhostgenes")
install_github("jotsetung/MirhostDb.Hsapiens.v75.v20")
install_github("jotsetung/mirtarbase")
install_github("jotsetung/SeqUtils")

install_github("glibiseller/IPO")

install_github("jimhester/covr")
cat("\nfinished\n")


## Now we're going to check which packages should be still installed.
instPacks <- installed.packages()
notInst <- packs[!(packs %in% instPacks[, "Package"])]

if(length(notInst) > 0){
    cat(paste0("\n----------------------------------------\n\n", length(notInst),
               " package(s) was/were not installed:\n"))
    cat(paste("-", notInst, "\n"))
    cat("\nYou might have to install them manually.")
}else{
    cat(paste0("\n----------------------------------------\n\n",
               "Congratulations! All packages installed successfully!\n"))
}

