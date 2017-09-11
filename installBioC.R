## installing Bioconductor packages...
##source( "http://www.bioconductor.org/biocLite.R" )
##source( "/Volumes/jodata/mirror/biocLite.R" )

## Eventually change cran mirror:
##options(repos = c(CRAN = "file:///Volumes/jodata/mirror/CRAN/"))

library(BiocInstaller)
##useDevel()
cat("Installing core packages\n\n")

suppressMessages(
    biocLite(ask = FALSE)
)
## what if library(BiocInstaller) and useDevel()

cat("\n\nNow installing additional packages...\n")
packs <- read.table( "./packages.txt", sep="\t", as.is=TRUE )[,1]

suppressMessages(
    biocLite(packs, ask = FALSE)
)

cat("\n\nInstalling stuff from github:\n")
library(devtools)
cat("\njotsetung\n")
install_github("jotsetung/unsoRted")
##install_github("jotsetung/mirtarbase-db")
##install_github("jotsetung/generalgcrma")
##install_github("jotsetung/GenomePlotR")
install_github("jotsetung/mirhostgenes")
install_github("jotsetung/MirhostDb.Hsapiens.v75.v20")
install_github("jotsetung/mirtarbase")
install_github("jotsetung/SeqUtils")
install_github("jotsetung/xcmsExtensions")
install_github("jotsetung/atc")

cat("\nglibiseller\n")
install_github("glibiseller/IPO")

cat("\njimhester\n")
install_github("jimhester/covr")

cat("\n\n---- finished ---\n\n")


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

