#!/bin/sh
## check out some packages from our svn and install
## install the package for the R version:
R="R-3.2.2-stable"

echo "Installing packages for R: $R, if that's not the R-version for which you want to install the packages you can change the R binary inside the script\n"

REPOS="https://manny.i-med.ac.at/bioinfo/Rpacks.git"
## check out the full repo at once.
## where to download the packages
cd /tmp
git clone $REPOS
cd Rpacks
#USER="anonuser"
PACKS=( chromloc RMatBase Rppi AnaglyphR ScorePeaks )

for pack in ${PACKS[@]}
do
    echo $CURRENTPACK
    `$R CMD INSTALL $pack`
    rm -R -f $pack
done

cd ..
rm -R -f Rpacks

echo "\n\n Install unsoRted\n\n"
cd /tmp
git clone https://github.com/jotsetung/unsoRted.git
`$R CMD INSTALL unsoRted`
rm -R -f unsoRted

echo "\n\n Install mirtarbase.db\n\n"
cd /tmp
git clone https://github.com/jotsetung/mirtarbase-db.git
`$R CMD build mirtarbase-db`
`$R CMD INSTALL mirtarbase.db*`
rm -R -f mirtarbase*

echo "\n\n Install generalgcrma\n\n"
cd /tmp
git clone https://github.com/jotsetung/generalgcrma.git
`$R CMD INSTALL generalgcrma`
rm -R -f generalgcrma

echo "\n\n Install GenomePlotR\n\n"
cd /tmp
git clone https://github.com/jotsetung/GenomePlotR.git
`$R CMD INSTALL GenomePlotR`
rm -R -f GenomePlotR


