packages <- c("ggplot2", "Hmisc", "Rcpp", "roxygen2", "jsonlite", "igraph", "dplyr", "multicore", "colorspace", "ic10", "igraph", "network","GGally","sna") 
install.packages(packages, repos='http://cran.rstudio.com/', dependencies=TRUE)

source("https://bioconductor.org/biocLite.R")
biocLite(c("genefu", "WGCNA", "impute", "preprocessCore", "GO.db", "illuminaHumanv3.db", "illuminaHumanv4.db", "hgu133a.db"), dependencies=TRUE)
