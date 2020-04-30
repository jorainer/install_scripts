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

pack_files <- dir(".", "^packages-")
cat("\n\nInstalling packages from", length(pack_files), "categories\n")
packs <- character()

for (i in pack_files) {
    category <- sub("^packages-", "", pack_files)
    category <- sub(".txt", "", category, fixed = TRUE)
    cur_packs <- read.table(pack_files[i], sep = "\t")[, 1]
    cat(category, ":", length(cur_packs), "packages\n")
    packs <- c(packs, cur_packs)
    BiocManager::install(cur_packs, ask = FALSE, version = vrsn)
}

cat("\n\nInstalling stuff from github:\n")
library(devtools)
cat("\njorainer\n")
install_github("jorainer/atc")

cat("\nstanstrup\n")
install_github("stanstrup/commonMZ")

cat("\nRforMassSpectrometry\n")
BiocManager::install("RforMassSpectrometry/MsCoreUtils")
BiocManager::install("RforMassSpectrometry/Spectra")
BiocManager::install("RforMassSpectrometry/Chromatograms")
BiocManager::install("RforMassSpectrometry/MsBackendHmdb")

cat("\nEuracBiomedicalResearch\n")
BiocManager::install("EuracBiomedicalResearch/CompMetaboTools")
BiocManager::install("EuracBiomedicalResearch/CompoundDb")

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

