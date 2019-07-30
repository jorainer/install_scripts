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
expvar="export PERL5LIB=$PERL5LIB:~/ensembl/API/bioperl-live/:~/ensembl/API/ensembl/modules/:~/ensembl/API/ensembl-compara/modules/:~/ensembl/API/ensembl-funcgen/modules/:~/ensembl/API/ensembl-io/modules/:~/ensembl/API/ensembl-variation/modules/:$PERL5LIB"
echo $expvar >> ~/.bash_profile
echo $expvar >> ~/.zshrc

# echo "Emacs for OS X"
# mkdir -p ~/Projects/git/
# cd ~/Projects/git
# git clone https://github.com/jimeh/build-emacs-for-osx

echo "jotsetung stuff"
mkdir -p ~/Projects/git/jorainer/
cd ~/Projects/git/jorainer/
if [ ! -d AHEnsDbs ]; then git clone https://github.com/jorainer/AHEnsDbs; fi
if [ ! -d BioC2016-ensembldb ]; then git clone https://github.com/jorainer/BioC2016-ensembldb; fi
if [ ! -d EuroBioC2016-ensembldb ]; then git clone https://github.com/jorainer/EuroBioC2016-ensembldb; fi
if [ ! -d atc ]; then git clone https://github.com/jorainer/atc; fi
if [ ! -d ensembldb ]; then git clone https://github.com/jorainer/ensembldb; fi
if [ ! -d flatui-emacs ]; then git clone https://github.com/jorainer/flatui-emacs; fi
if [ ! -d gruvbox-emacs ]; then git clone https://github.com/jorainer/gruvbox-emacs; fi
if [ ! -d memacs ]; then git clone https://github.com/jorainer/memacs; fi
if [ ! -d mirhostgenes ]; then git clone https://github.com/jorainer/mirhostgenes; fi
if [ ! -d mirtarbase ]; then git clone https://github.com/jorainer/mirtarbase; fi
if [ ! -d mzR ]; then git clone https://github.com/jorainer/mzR; fi

mkdir -p ~/Projects/git/sneumann/
cd ~/Projects/git/sneumann/
echo "sneumann stuff"
if [ ! -d xcms ]; then git clone https://github.com/sneumann/xcms; fi
if [ ! -d mzR ]; then git clone https://github.com/sneumann/mzR; fi

echo "lgatto etc stuff"
mkdir -p ~/Projects/git/lgatto/
cd ~/Projects/git/lgatto/
if [ ! -d MSnbase ]; then git clone https://github.com/lgatto/MSnbase; fi

echo "RforMassSpectrometry"
mkdir -p ~/Projects/git/RforMassSpectrometry
cd ~/Projects/git/RforMassSpectrometry
if [ ! -d MsCoreUtils ]; then git clone https://github.com/lgatto/MsCoreUtils; f
if [ ! -d Spectra ]; then git clone https://github.com/lgatto/Spectra; fi
if [ ! -d Chromatograms ]; then git clone https://github.com/lgatto/Chromatograms; fi
if [ ! -d stickers ]; then git clone https://github.com/lgatto/stickers; fi
if [ ! -d MsBackendHmdb ]; then git clone https://github.com/lgatto/MsBackendHmdb; fi

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
if [ ! -d CompoundDb ]; then git clone https://github.com/EuracBiomedicalResearch/CompoundDb; fi

echo "various stuff"
cd ~/Projects/git/
git clone https://github.com/powerline/fonts
git clone https://github.com/DrDonk/unlocker
