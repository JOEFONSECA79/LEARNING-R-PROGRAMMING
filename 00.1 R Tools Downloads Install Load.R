# Installs
# install.packages can be used to install packages at the R console



#a <- available.packages()
#head(rownames(a), 3)  ## Show the names of the first few packages




# Install Single Package
install.packages("slidify")     #   package 'slidify' is not available (for R version 3.3.2)

# Install Multiple Packages
install.packages(c("slidify", "ggplot2", "devtools"))


# Install R Package from Bioconductor
source("http://bioconductor.org/biocLite.R")
#biocLite()  # Single
biocLite(c("GenomicFeatures", "AnnotationDbi"))




# Setp 2 after Install - Loading R Packages 
# All packages need to be loaded first prior to using


library(ggplot2)
search()    # this will list the functions part of ggplot2 package


# To check if you have a Package Installed
library(devtools)
find.package("devtools")




#install a package

install.packages("KernSmooth")

#loads the package
library(KernSmooth)







