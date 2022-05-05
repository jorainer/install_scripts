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

echo "jorainer stuff"
mkdir -p ~/Projects/git/jorainer/
cd ~/Projects/git/jorainer/
if [ ! -d AHEnsDbs ]; then git clone git@github.com:jorainer/AHEnsDbs; fi
if [ ! -d atc ]; then git clone git@github.com:jorainer/atc; fi
if [ ! -d ensembldb ]; then git clone git@github.com:jorainer/ensembldb; fi
if [ ! -d flatui-emacs ]; then git clone git@github.com:jorainer/flatui-emacs; fi
if [ ! -d gruvbox-emacs ]; then git clone git@github.com:jorainer/gruvbox-emacs; fi
if [ ! -d memacs ]; then git clone git@github.com:jorainer/memacs; fi

mkdir -p ~/Projects/git/sneumann/
cd ~/Projects/git/sneumann/
echo "sneumann stuff"
if [ ! -d xcms ]; then git clone git@github.com:sneumann/xcms; fi
if [ ! -d mzR ]; then git clone git@github.com:sneumann/mzR; fi

echo "lgatto etc stuff"
mkdir -p ~/Projects/git/lgatto/
cd ~/Projects/git/lgatto/
if [ ! -d MSnbase ]; then git clone git@github.com:lgatto/MSnbase; fi

echo "RforMassSpectrometry"
mkdir -p ~/Projects/git/RforMassSpectrometry
cd ~/Projects/git/RforMassSpectrometry
if [ ! -d MsCoreUtils ]; then git clone git@github.com:RforMassSpectrometry/MsCoreUtils; fi
if [ ! -d Spectra ]; then git clone git@github.com:RforMassSpectrometry/Spectra; fi
if [ ! -d Chromatograms ]; then git clone git@github.com:RforMassSpectrometry/Chromatograms; fi
if [ ! -d stickers ]; then git clone git@github.com:RforMassSpectrometry/stickers; fi
if [ ! -d MsBackendHmdb ]; then git clone git@github.com:RforMassSpectrometry/MsBackendHmdb; fi
if [ ! -d SpectriPy ]; then git clone git@github.com:RforMassSpectrometry/SpectriPy; fi
if [ ! -d MsBackendMsp ]; then git clone git@github.com:RforMassSpectrometry/MsBackendMsp; fi
if [ ! -d MsBackendMgf ]; then git clone git@github.com:RforMassSpectrometry/MsBackendMgf; fi
if [ ! -d MsBackendMassbank ]; then git clone git@github.com:RforMassSpectrometry/MsBackendMassbank; fi
if [ ! -d MsqlBackend ]; then git clone git@github.com:RforMassSpectrometry/MsqlBackend; fi
if [ ! -d CompoundDb ]; then git clone git@github.com:RforMassSpectrometry/CompoundDb; fi
if [ ! -d MetaboCoreUtils ]; then git clone git@github.com:RforMassSpectrometry/MetaboCoreUtils; fi
if [ ! -d MetaboAnnotation ]; then git clone git@github.com:RforMassSpectrometry/MetaboAnnotation; fi
if [ ! -d SpectraQL ]; then git clone git@github.com:RforMassSpectrometry/SpectraQL; fi
if [ ! -d SpectraVis ]; then git clone git@github.com:RforMassSpectrometry/SpectraVis; fi
if [ ! -d QFeatures ]; then git clone git@github.com:RforMassSpectrometry/QFeatures; fi
if [ ! -d SpectraVis ]; then git clone git@github.com:RforMassSpectrometry/SpectraVis; fi
if [ ! -d MsExperiment ]; then git clone git@github.com:RforMassSpectrometry/MsExperiment; fi
if [ ! -d MsFeatures ]; then git clone git@github.com:RforMassSpectrometry/MsFeatures; fi

echo "Bioconductor stuff"
mkdir -p ~/Projects/git/Bioconductor/
cd ~/Projects/git/Bioconductor/
if [ ! -d BiocStickers ]; then git clone git@github.com:Bioconductor/BiocStickers; fi
if [ ! -d AnnotationFilter ]; then git clone git@github.com:Bioconductor/AnnotationFilter; fi

echo "EuracBiomedicalResearch stuff"
mkdir -p ~/Projects/git/EuracBiomedicalResearch/
cd ~/Projects/git/EuracBiomedicalResearch/
if [ ! -d FamAgg ]; then git clone git@github.com:EuracBiomedicalResearch/FamAgg; fi
if [ ! -d chrisUtils ]; then git clone git@github.com:EuracBiomedicalResearch/chrisUtils; fi

echo "various stuff"
cd ~/Projects/git/
git clone https://github.com/powerline/fonts
git clone https://github.com/DrDonk/unlocker
