#!/bin/bash

echo "installing perlbrew"
wget -O - https://install.perlbrew.pl | bash
echo "## Added by mint-install-perl.sh" >> ~/.profile
echo "PATH=\"~/perl5/perlbrew/bin:$PATH\"" >> ~/.profile
echo "export PATH" >> ~/.profile

perlbrew init
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.bashrc
source ~/.bashrc
source ~/.profile


echo "installing perl libs"

echo "export PERLBREW_ROOT=~/perl5/perlbrew/" >> ~/.profile
source ~/.profile

# mkdir ~/perl5/perlbrew
# mkdir ~/perl5/perlbrew/dist
# mkdir ~/perl5/perlbrew/dists
# mkdir ~/perl5/perlbrew/build
##ln -s ~/perl5/perlbrew/bin/cpanm ~/bin/cpanm
##ln -s ~/perl5/perlbrew/bin/patchperl ~/bin/patchperl
# perlbrew install-patchperl
perlbrew install --notest perl-5.18.0
perlbrew switch perl-5.18.0

perlbrew install-cpanm
# echo "changing perl to perl-5.18.2"
# echo "## automatically added by mint-install-perl.sh" >> ~/.profile
# echo "PATH=~/perl5/perlbrew/perls/perl-5.18.2/bin:$PATH" >> ~/.profile
# echo "export PATH" >> ~/.profile
# echo "PERL5LIB=~/perl5/perlbrew/perls/perl-5.18.2/lib/5.18.2/~/perl5/perlbrew/perls/perl-5.18.2/lib/site_perl/5.18.2/:~/perl5/perlbrew/perls/perl-5.18.2/lib/site_perl/5.18.2/x86_64-linux/:$PERL5LIB" >> ~/.profile
# echo "export PERL5LIB" >> ~/.profile
# source ~/.profile

## cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm Config::Simple
cpanm Array::Compare
cpanm Parallel::ForkManager
cpanm Getopt::Std
cpanm Carp
cpanm Carp::Assert
cpanm Carp::Clan
cpanm DBI
cpanm DBI::DBD
cpanm --notest Class::DBI::mysql
cpanm DBD::mysql
##cpanm --notest Cairo
##cpanm --notest Gtk2
cpanm Class::Base
cpanm Class::DBI
##cpanm Class::Errorhandler
cpanm Compress::Bzip2
cpanm Exception::Class
cpanm Getopt::Simple
cpanm IO::Stringy
##cpanm BioPerl
cpanm Sort::Naturally
##cpanm --force Tk
cpanm List::MoreUtils
cpanm Exporter::Tiny

echo "Done"

