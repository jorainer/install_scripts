#!/bin/sh

echo "Installing Bioconductor docker images"

docker pull bioconductor/bioconductor_docker:RELEASE_3_11
docker pull bioconductor/bioconductor_docker:devel

echo "Installing other images"

## docker pull rocker/r-devel
docker pull chambm/pwiz-skyline-i-agree-to-the-vendor-licenses
## docker pull hdfgroup/h5serv

echo "Done"
