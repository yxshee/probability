# List of required packages
pkgs <- c("cubature")

# Install missing
to_install <- pkgs[!pkgs %in% installed.packages()[,1]]
if(length(to_install)) install.packages(to_install, repos="https://cloud.r-project.org")

# Load all
lapply(pkgs, library, character.only=TRUE)
