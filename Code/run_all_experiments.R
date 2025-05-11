# Set working dir to this file's parent
this_dir <- dirname(normalizePath(sys.frame(1)$ofile %||% "."))
setwd(this_dir)

# Load dependencies
source("setup_packages.R")

# Find and source all scripts
r_files <- list.files(this_dir, pattern="\\.R$", full.names=TRUE)
r_files <- r_files[!grepl("setup_packages\\.R|run_all_experiments\\.R$", r_files)]
for (f in sort(r_files)) {
  message("---- Sourcing ", basename(f), " ----")
  source(f)
}
