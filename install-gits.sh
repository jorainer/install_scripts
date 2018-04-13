## Installing a lot of stuff from github.

echo "installing ensembl stuff"
mkdir -p ~/ensembl
mkdir -p ~/ensembl/API
cd ~/ensembl/API
git clone -b bioperl-release-1-6-1 --depth 1 https://github.com/bioperl/bioperl-live.git
git clone https://github.com/Ensembl/ensembl.git
git clone https://github.com/Ensembl/ensembl-variation.git
git clone https://github.com/Ensembl/ensembl-funcgen.git
git clone https://github.com/Ensembl/ensembl-compara.git
git clone https://github.com/Ensembl/ensembl-io.git
echo "PERL5LIB=$PERL5LIB:~/ensembl/API/bioperl-live/:~/ensembl/API/ensembl/modules/:~/ensembl/API/ensembl-compara/modules/:~/ensembl/API/ensembl-funcgen/modules/:~/ensembl/API/ensembl-io/modules/:~/ensembl/API/ensembl-variation/modules/:$PERL5LIB" >> ~/.bash_profile
echo "export PERL5LIB" >> ~/.bash_profile

echo "Emacs for OS X"
mkdir -p ~/Projects/git/
cd ~/Projects/git
git clone https://github.com/jimeh/build-emacs-for-osx

echo "jotsetung stuff"
mkdir -p ~/Projects/git/jotsetung/
cd ~/Projects/git/jotsetung/
if [ ! -d AHEnsDbs ]; then git clone https://github.com/jotsetung/AHEnsDbs; fi
if [ ! -d BioC2016-ensembldb ]; then git clone https://github.com/jotsetung/BioC2016-ensembldb; fi
if [ ! -d EuroBioC2016-ensembldb ]; then git clone https://github.com/jotsetung/EuroBioC2016-ensembldb; fi
if [ ! -d atc ]; then git clone https://github.com/jotsetung/atc; fi
if [ ! -d ensembldb ]; then git clone https://github.com/jotsetung/ensembldb; fi
if [ ! -d flatui-emacs ]; then git clone https://github.com/jotsetung/flatui-emacs; fi
if [ ! -d gruvbox-emacs ]; then git clone https://github.com/jotsetung/gruvbox-emacs; fi
if [ ! -d memacs ]; then git clone https://github.com/jotsetung/memacs; fi
if [ ! -d mirhostgenes ]; then git clone https://github.com/jotsetung/mirhostgenes; fi
if [ ! -d mirtarbase ]; then git clone https://github.com/jotsetung/mirtarbase; fi
if [ ! -d mzR ]; then git clone https://github.com/jotsetung/mzR; fi

mkdir -p ~/Projects/git/sneumann/
cd ~/Projects/git/sneumann/
echo "sneumann stuff"
if [ ! -d xcms ]; then git clone https://github.com/sneumann/xcms; fi
if [ ! -d mzR ]; then git clone https://github.com/sneumann/mzR; fi

echo "lgatto etc stuff"
mkdir -p ~/Projects/git/lgatto/
cd ~/Projects/git/lgatto/
if [ ! -d MSnbase ]; then git clone https://github.com/lgatto/MSnbase; fi
mkdir -p ~/Projects/git/ComputationalProteomicsUnit/
cd ~/Projects/git/ComputationalProteomicsUnit/
if [ ! -d Pbase ]; then git clone https://github.com/ComputationalProteomicsUnit/Pbase; fi

echo "Bioconductor stuff"
mkdir -p ~/Projects/git/Bioconductor/
cd ~/Projects/git/Bioconductor/
if [ ! -d BiocStickers ]; then git clone https://github.com/Bioconductor/BiocStickers; fi
if [ ! -d AnnotationFilter ]; then git clone https://github.com/Bioconductor/AnnotationFilter; fi

echo "EuracBiomedicalResearch stuff"
mkdir -p ~/Projects/git/EuracBiomedicalResearch/
cd ~/Projects/git/EuracBiomedicalResearch/
if [ ! -d FamAgg ]; then git clone https://github.com/EuracBiomedicalResearch/FamAgg; fi
if [ ! -d chrisUtils ]; then git clone https://github.com/EuracBiomedicalResearch/chrisUtils; fi

echo "various stuff"
cd ~/Projects/git/
git clone https://github.com/powerline/fonts
