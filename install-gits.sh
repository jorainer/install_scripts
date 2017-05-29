## Installing a lot of stuff from github.

echo "installing ensembl stuff"
if [ -d ]
mkdir -p ~/ensembl
mkdir -p ~/ensembl/API
cd ~/ensembl/API
git clone -b bioperl-release-1-6-1 --depth 1 https://github.com/bioperl/bioperl-live.git
git clone https://github.com/Ensembl/ensembl.git
git clone https://github.com/Ensembl/ensembl-variation.git
git clone https://github.com/Ensembl/ensembl-funcgen.git
git clone https://github.com/Ensembl/ensembl-compara.git
git clone https://github.com/Ensembl/ensembl-io.git
echo "PERL5LIB=~/ensembl/API/bioperl-live/:~/ensembl/API/ensembl/modules/:~/ensembl/API/ensembl-compara/modules/:~/ensembl/API/ensembl-funcgen/modules/:~/ensembl/API/ensembl-io/modules/:~/ensembl/API/ensembl-variation/modules/:$PERL5LIB" >> ~/.profile
echo "export PERL5LIB" >> ~/.profile

echo "jotsetung stuff"
mkdir -p ~/Projects/git/
cd ~/Projects/git
git clone https://github.com/jotsetung/ensembldb
git clone https://github.com/jotsetung/FamAgg
git clone https://github.com/jotsetung/memacs
git clone https://github.com/jotsetung/atc
git clone https://github.com/jotsetung/install_scripts

echo "sneumann stuff"
git clone https://github.com/sneumann/xcms
git clone https://github.com/sneumann/mzR

echo "lgatto etc stuff"
git clone https://github.com/lgatto/MSnbase
git clone https://github.com/ComputationalProteomicsUnit/Pbase

echo "Bioconductor stuff"
git clone https://github.com/Bioconductor/BiocStickers
git cline https://github.com/Bioconductor/AnnotationFilter
