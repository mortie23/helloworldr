library(glue)
library(readr)
library(stringr)

devtools::document(roclets = c('rd', 'collate', 'namespace'))
devtools::build()

# Move folder
source_file <- "helloworldr"
package_path <- "/opt/privatePkgs/src/contrib/"
version <- "0.0.0.9000"
source_fullpath <- glue("../{source_file}_{version}.tar.gz")
target_fullpath <-  glue("{package_path}{source_file}_{version}.tar.gz")

copy_outcome <- file.copy(source_fullpath, target_fullpath, overwrite = T)
system(glue("chmod 0770 {target_fullpath}"))
tools::write_PACKAGES(package_path, latestOnly = F)
unlink(source_fullpath)
