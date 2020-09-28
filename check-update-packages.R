#' Simple function that tries to load each installed package and if loading
#' fails installs it with `BiocManager::install`.
check_update_packages <- function() {
    pkgs <- installed.packages()
    skip <- c("pathview")
    pkgs <- pkgs[grep("host-site-library", pkgs[, "LibPath"]), "Package"]
    for (i in seq_along(pkgs)) {
        message("=> ", pkgs[i])
        suppressPackageStartupMessages(
            ok <- library(pkgs[i], character.only = TRUE, logical.return = TRUE,
                          verbose = FALSE, quietly = TRUE))
        if (!ok)
            BiocManager::install(pkgs[i], update = FALSE, ask = FALSE)
        else
            try(detach(paste0("package:", pkgs[i]), character.only = TRUE,
                       unload = TRUE, force = TRUE))
    }
}
