#!/bin/bash
# options: --no-Rd, --no-c, --no-R

BASEPATH="/Users/jo/Projects/git"
rm "$BASEPATH/TAGS"
DIRS=( "lgatto/MSnbase" "jorainer/atc" "EuracBiomedicalResearch/chrisUtils" "jorainer/ensembldb" "sneumann/xcms" "Bioconductor/AnnotationFilter" "EuracBiomedicalResearch/FamAgg" "EuracBiomedicalResearch/CompoundDb" "jorainer/mzR" "RforMassSpectrometry/Spectra" "RforMassSpectrometry/MsCoreUtils" "RforMassSpectrometry/Chromatograms")
for i in "${DIRS[@]}"
do
    R CMD rtags -V --no-Rd --no-c -o "$BASEPATH/TAGS" --append "$BASEPATH/$i"
done

