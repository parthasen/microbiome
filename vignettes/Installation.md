### Installing R

**If you do not already have R/RStudio installed**, do the following.

1.  Install [R](http://www.r-project.org/)
2.  Consider installing [RStudio](http://rstudio.org); GUI for R
3.  With Windows, install
    [RTools](http://cran.r-project.org/bin/windows/Rtools/) (version
    corresponding to your R version)

### Install dependencies

Open R and install dependencies from the Tools panel, or run the
following commands:

    source("http://www.bioconductor.org/biocLite.R")
    biocLite("ade4")
    biocLite("fastcluster")
    biocLite("df2json")
    biocLite("rjson")
    biocLite("gplots")
    biocLite("devtools")
    biocLite("ggplot2")
    biocLite("MASS")
    biocLite("Matrix")
    biocLite("minet")
    biocLite("mixOmics")
    biocLite("plyr")
    biocLite("qvalue")
    biocLite("reshape2")
    biocLite("RPA")
    biocLite("svDialogs")
    biocLite("vegan")
    biocLite("WGCNA")
    biocLite("rpart")

If some of these installations fail, ensure from the RStudio tools panel
that you have access to CRAN and Bioconductor repositories. If you
cannot install some packages, some functionality in microbiome may not
work.

### Install/update the microbiome package

To install microbiome package and recommended dependencies, run in R:

    library(devtools) # Load the devtools package
    install_github("microbiome/microbiome") # Install the package
    install_github("ropensci/rdryad") # Install proposed package
    install_github("antagomir/netresponse") # Install proposed package

### Loading the package

Once the package has been installed, you can load it in R with:

    library(microbiome)  

Install HITChipDB package
-------------------------

The HITChipDB package contains additional routines to fetch and
preprocess HITChip (or MIT/PITChip) data from the MySQL database. Note
that this package is **not needed by most users** and the data is
protected by password/IP combinations. Ask details from admins. Install
the package in R with:

    library(devtools) # Load the devtools package
    install_github("microbiome/HITChipDB") # Install the package
    # Also install RMySQL, multicore and tcltk !
    source("http://www.bioconductor.org/biocLite.R")
    biocLite("RMySQL") # multicore, tcltk?
    # Test installation by loading the microbiome package in R
    library("HITChipDB")

General installation instructions
---------------------------------

R packages are maintained in three distinct repositories: CRAN,
Bioconductor and Github. You need to somehow find out which repository
your desired package is in, or just try out the three alternatives:

    # Installing from Bioconductor
    source("http://www.bioconductor.org/biocLite.R")
    biocLite("MASS")

    # Installing from CRAN
    install.packages("sorvi")

    # Installing from Github
    library(devtools)
    install_github("antagomir/netresponse")
