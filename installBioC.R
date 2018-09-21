## installing Bioconductor packages...
##source( "http://www.bioconductor.org/biocLite.R" )
##source( "/Volumes/jodata/mirror/biocLite.R" )

## Eventually change cran mirror:
##options(repos = c(CRAN = "file:///Volumes/jodata/mirror/CRAN/"))

if (!require("BiocManager", character.only = TRUE))
    install.packages("BiocManager")
library(BiocManager)

if (any(ls() == "use_devel")) {
    if (use_devel)
        vrsn <- "devel"
    else vrsn <- BiocManager::version()
} else {
    vrsn <- BiocManager::version()
}

cat(paste("\n\nGoing to install Bioconductor", as.character(vrsn), "\n\n"))

BiocManager::install(version = vrsn)


cat("\n\nInstalling packages...\n")
packs <- read.table( "./packages.txt", sep="\t", as.is=TRUE )[, 1]

suppressMessages(
    BiocManager::install(packs, ask = FALSE, version = vrsn)
)

cat("\n\nInstalling stuff from github:\n")
library(devtools)
cat("\njotsetung\n")
## install_github("jotsetung/unsoRted")
##install_github("jotsetung/mirtarbase-db")
##install_github("jotsetung/generalgcrma")
##install_github("jotsetung/GenomePlotR")
## install_github("jotsetung/mirhostgenes")
## install_github("jotsetung/MirhostDb.Hsapiens.v75.v20")
## install_github("jotsetung/mirtarbase")
## install_github("jotsetung/SeqUtils")
##install_github("jotsetung/xcmsExtensions")
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

