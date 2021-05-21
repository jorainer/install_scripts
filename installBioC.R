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

pack_files <- dir(".", pattern = "^packages-")
cat("\n\nInstalling packages from", length(pack_files), "categories\n")
packs <- character()

for (fl in pack_files) {
    category <- sub("^packages-", "", fl)
    category <- sub(".txt", "", category, fixed = TRUE)
    cur_packs <- read.table(fl, sep = "\t", as.is = TRUE)[, 1]
    cat(category, ":", length(cur_packs), "packages\n")
    packs <- c(packs, cur_packs)
    BiocManager::install(cur_packs, ask = FALSE, version = vrsn)
}

cat("\n\nInstalling stuff from github:\n")
library(devtools)
cat("\njorainer\n")
install_github("jorainer/atc")

cat("\nRforMassSpectrometry\n")
BiocManager::install("RforMassSpectrometry/MsCoreUtils")
BiocManager::install("RforMassSpectrometry/Spectra")
BiocManager::install("RforMassSpectrometry/Chromatograms")
BiocManager::install("RforMassSpectrometry/MsBackendHmdb")
BiocManager::install("RforMassSpectrometry/MsBackendMassbank")
BiocManager::install("RforMassSpectrometry/MetaboCoreUtils")
BiocManager::install("RforMassSpectrometry/MetaboAnnotation")

cat("\nEuracBiomedicalResearch\n")
BiocManager::install("EuracBiomedicalResearch/CompMetaboTools")
BiocManager::install("EuracBiomedicalResearch/CompoundDb")

cat("\n other \n")
BiocManager::install("ugcd/solarius")
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

