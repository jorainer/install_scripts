#!/bin/sh
# options: --no-Rd, --no-c, --no-R

BASEPATH="/Users/jo/Projects/git"
DIRS=( "lgatto/MSnbase" "jotsetung/atc" "jotsetung/chrisUtils" "jotsetung/ensembldb" "ggbio" "jotsetung/mirtarbase" "jotsetung/mirhostgenes" "sneumann/xcms" "Bioconductor/AnnotationFilter" "sneumann/mzR" "jotsetung/FamAgg")
for i in "${DIRS[@]}"
do
    R CMD rtags -V -o "$BASEPATH/TAGS" --append "$BASEPATH/$i"
done

