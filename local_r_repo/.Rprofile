## sync CRAN:
## rsync -rtlzv --delete cran.r-project.org::CRAN /dir/on/local/disc 
local({r <- getOption("repos"); r["CRAN"] <- "http://my.local.cran"; options(repos = r)})
## sync Bioconductor:
## rsync -zrtlv --delete master.bioconductor.org::2.14 /dest/bioc_2.14
options( BioC_mirror="" )
