echo "________________________________________________________________________________"
echo "Installing Perl\n"
curl -L http://install.perlbrew.pl | bash
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.bash_profile
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.zshrc
source ~/.bash_profile
perlbrew install-patchperl
# perlbrew --notest install perl-5.18.2
# perlbrew switch perl-5.18.2
perlbrew --notest install perl-5.18.0
perlbrew switch perl-5.18.0
## perlbrew install stable
perlbrew install-cpanm
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm Config::Simple
cpanm Array::Compare
cpanm Parallel::ForkManager
cpanm Getopt::Std
cpanm Carp
cpanm Carp::Assert
cpanm Carp::Clan
cpanm DBI
cpanm DBI::DBD
cpanm --force Class::DBI::mysql
cpanm --force DBD::mysql
cpanm --notest Cairo
cpanm --notest Gtk2
cpanm Class::Base
cpanm Class::DBI
##cpanm Class::Errorhandler
cpanm Compress::Bzip2
cpanm Exception::Class
cpanm Getopt::Simple
cpanm IO::Stringy
## cpanm BioPerl
cpanm Sort::Naturally
cpanm --force Tk
cpanm List::MoreUtils
cpanm Exporter::Tiny

echo "\n\nDone\n\n"
