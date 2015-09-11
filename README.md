<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Some unsorted installation scripts and descriptions</a>
<ul>
<li><a href="#sec-1-1">1.1. Overview</a></li>
<li><a href="#sec-1-2">1.2. Installation of Homebrew and R</a>
<ul>
<li><a href="#sec-1-2-1">1.2.1. Installation of homebrew</a></li>
<li><a href="#sec-1-2-2">1.2.2. Installation of R</a></li>
<li><a href="#sec-1-2-3">1.2.3. Installation of pre-defined Bioconductor and additional packages</a></li>
</ul>
</li>
<li><a href="#sec-1-3">1.3. Installation of Emacs with org-mode, ess etc</a></li>
<li><a href="#sec-1-4">1.4. Installation of other resources</a>
<ul>
<li><a href="#sec-1-4-1">1.4.1. Installation of GMAP/GSNAP</a></li>
<li><a href="#sec-1-4-2">1.4.2. Mirror of CRAN and Bioconductor</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-2">2. Development</a>
<ul>
<li><a href="#sec-2-1">2.1. Versions and change log</a></li>
<li><a href="#sec-2-2">2.2. TODOs</a>
<ul>
<li><a href="#sec-2-2-1">2.2.1. <span class="todo TODO">TODO</span> Add scripts to install gsnap/gmap and build index files.</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

---

# Some unsorted installation scripts and descriptions<a id="sec-1"></a>

This package contains useful scripts that ease the installation of certain, frequently used but less often installed, tools and environments and also descriptions for less complicated things.

## Overview<a id="sec-1-1"></a>

Below we just list all the scripts and files.
-   `brew-jo-strong.sh`: installation of *homebrew* on Mac OS X systems (Section 1.2.1).
-   `gitinstall.sh`: installation of additional `R` packages from our git repository and from github (Section 1.2.3.1).
-   `install-R-release.sh`: script to download, compile and install `R` on Mac OS X (Section 1.2.2).
-   `installBioC.R`: `R` script to install a pre-defined set of Bioconductor package for the analysis of biological data (Section 1.2.3).
-   `packages.txt`: text file listing all Bioconductor and `R` packages to be installed by the above script (Section 1.2.3).
-   `local_r_repo/mirrror.pl`: `perl` script to mirror Bioconductor or CRAN (Section 1.4.2).

## Installation of Homebrew and R<a id="sec-1-2"></a>

This package provides (shell) scripts to install and set up Homebrew (<http://brew.sh/>) on Mac OS X and to install R (<http://www.r-project.org>).

### Installation of homebrew<a id="section.homebrew"></a><a id="sec-1-2-1"></a>

Homebrew provides libraries and packages that Apple does not, i.e. it allows to install additional compilers, development packages or (open source) software on Mac operating system (similar to *fink* or *macports*). From personal experience, I always had the least problems (i.e. missing libraries) with homebrew and installation of `R` and `Bioconductor`.

Homebrew should be installed using the default way:

    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

followed by

    brew doctor

To check for any potential problems (i.e. missing Xquartz, potentially conflicting compilers/software).
Also, it is recommended to update using

    brew update
    brew upgrade

In case you have macports (<http://www.macports.org>) installed, you should remove it from your system (see <https://guide.macports.org/chunked/installing.macports.uninstalling.html> for a guide how to remove macports).

Once that's done you can install required packages for R/Bioconductor (including perl, fortran, Bioperl etc) calling:

    ./brew-jo-strong.sh

### Installation of R<a id="section.r"></a><a id="sec-1-2-2"></a>

The script `install-R-release.sh` will download and install the R-version submitted as a parameter to the script.

By default the script will install R into `/Users/jo/R`. This can be changed by editing the appropriate line in the `install-R-release.sh` script.

The example below downloads and installs R version 3.1.0:

    ./install-R-release.sh 3.1.0

### Installation of pre-defined Bioconductor and additional packages<a id="section.bioconductor"></a><a id="sec-1-2-3"></a>

In addition, a pre-defined set of packages from the Bioconductor (<http://www.bioconductor.org>) can be installed using the scripts below.
The list of packages is provided by the `packages.txt` file. It constitutes of default core Bioconductor packages, but also additional packages we frequently used or are using.
To install these packages, install `R` inside of the folder where both the `installBioC.R` and the `packages.txt` files reside and call `source( "installBioC.R" )` in `R`.
It usually takes some time to install all packages, so be patient. Also, it is suggested to check the warnings after the script finished (i.e. with `warnings()`) to check whether all packages have been installed properly.

1.  Installation of our R packages from git<a id="section.ourpackages"></a>

    In addition, some of our packages can be automatically fetched and installed from git.
    
    It should be pretty straightforward and on most systems it is sufficient to just call `./gitinstall.sh` which installs the packages for the current R-version bound to `R`. If you want to install the packages for another installed R-version you can change the path to that version inside the script.
    
    If git is complaining because of a self-certified ssl certificate, you should do the following:
    
    -   On MacOS it is sufficient to enter `https://manny.i-med.ac.at` in Safari (not any other browser!), add an exception and **permanently save the certificate**.
    -   On unix, call `echo | openssl s_client -connect manny.i-med.ac.at:443 2>&1 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > manny-cert.pem` save that certificate (`manny-cert.pem`) to some path (.e.g. *~.*.certs/). Now we have to configure `git` to accept (actually find) this certificate: add the line `export GIT_SSL_CAPATH=/home/jo/.certs/` (replacing *jo* with your user name) into your bash profile file.
    
    After that (make shure the `GIT_SSL_CAPATH` environment variable is set) and call `./gitinstall` again.

## Installation of Emacs with org-mode, ess etc<a id="sec-1-3"></a>

Installation of Emacs and related packages/addons is described in (the git repository) <https://manny.i-med.ac.at/jo/memacs>.

## Installation of other resources<a id="sec-1-4"></a>

The git repository <https://manny.i-med.ac.at/bioinfo/Ensembl-Exon-probemapping> provides additional (mostly perl) scripts for installation of other resources.
-   **Ensembl database**: (Semi)-automatic installation of Ensembl databases, API and sequence files can be performed using the perl script `installEnsemblDB.pl` or `check_update_Ensembl.pl`.

-   **Bowtie or GMAP index files**: building and installation of index files for the short sequence aligners `bowtie` and `gmap` can be performed using the perl script `make_index_ensembl.pl` provided by the git repository above.

### Installation of GMAP/GSNAP<a id="sec-1-4-1"></a>

-   Download the latest GMAP/GSNAP (e.g. `wget http://research-pub.gene.com/gmap/src/gmap-gsnap-2014-05-15.v2.tar.gz`).
-   Configure, compile and install:

    tar -xzf tar -xzf gmap-gsnap-*
    cd gmap-2014-05-15
    ./configure --prefix=/home/bioinfo/gmap
    make
    make install

Add `/home/bioinfo/gmap/bin` to your `PATH` environment variable.

### Mirror of CRAN and Bioconductor<a id="section.mirrror"></a><a id="sec-1-4-2"></a>

The `perl` script `mirrror.pl` (yes there are three *r*) allows to mirror the main CRAN or Bioconductor repository. Check the help of the function (`perl mirrror.pl -h`).

# Development<a id="sec-2"></a>

Please add your name here if you're contributing in whatever way.
-   Daniel Bindreither
-   Johannes Rainer

## Versions and change log<a id="sec-2-1"></a>

## TODOs<a id="sec-2-2"></a>

### TODO Add scripts to install gsnap/gmap and build index files.<a id="sec-2-2-1"></a>