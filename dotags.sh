#!/bin/bash
# options: --no-Rd, --no-c, --no-R

BASEPATH="/home/jo/Projects/git"
DIRS=( "lgatto/MSnbase" "jotsetung/atc" "jotsetung/chrisUtils" "jotsetung/ensembldb" "jotsetung/mirtarbase" "jotsetung/mirhostgenes" "sneumann/xcms" "Bioconductor/AnnotationFilter" "jotsetung/FamAgg" "jotsetung/mzR")
for i in "${DIRS[@]}"
do
    R CMD rtags -V --no-Rd --no-c -o "$BASEPATH/TAGS" --append "$BASEPATH/$i"
done

