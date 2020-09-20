# Setup and installation

Use [homebrew](https://brew.sh) to install all command line tools and 
applications.

- `./brew-jo-strong.sh`: install all command line utilities using homebrew.
- `./brew-cask.sh`: install apps using *brew cask*.

Install the Latex environment with the `tinytex` R package, i.e. in a 
(non-docker) R version install the `tinytex` with 
`install.packages("tinytex")` and then LaTeX with `tinyte::install_tinytex()`.
