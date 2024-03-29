installed <- rownames(installed.packages())
pkgs <- dir("~/R/x86_64-pc-linux-gnu-library/3.4")
new <- setdiff(pkgs, installed)
new
install.packages(new)


lib_loc <- "/usr/local/lib/R/site-library"
to_install <- unname(installed.packages(lib.loc = lib_loc)[, "Package"])
to_install
install.packages(pkgs = to_install,lib="/usr/local/lib/R/site-library")

remove.packages(pkgs = to_install, lib="~/R/x86_64-pc-linux-gnu-library/3.4")

sudo su - -c "R -e \"install.packages('shiny', repos='http://cran.rstudio.com/')\""  #to install package as root

sudo R # to login as root
update.packages(ask = FALSE, checkBuilt = TRUE) # to update packages as root, to new R version

ssh -L 8787:localhost:8787 chapmjs@systemsresearch.linkpc.net # command to connect local port forwarding



# Install packages on server:
sudo su - -c "R -e \"install.packages('openintro', repos='http://cran.rstudio.com/')\""