FROM fjukstad/kvik-r

RUN apt-get install -y default-jre \
    default-jdk \
    libmariadb-client-lgpl-dev
    

# Install R package dependencies 
RUN R -e 'install.packages(c("ggplot2", "Hmisc", "Rcpp", "roxygen2", "jsonlite", "igraph", "dplyr", "parallel", "colorspace", "ic10", "igraph", "network","GGally","sna", "animation"), repos="http://cran.rstudio.com")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite(c("genefu", "WGCNA", "impute", "preprocessCore", "GO.db", "illuminaHumanv4.db", "illuminaHumanv3.db","hgu133a.db"), dependencies=TRUE)'

WORKDIR /
COPY bioc-bciutils/BCIutils_0.99.0.tar.gz BCIutils_0.99.0.tar.gz
RUN R CMD INSTALL BCIutils_0.99.0.tar.gz
RUN rm BCIutils_0.99.0.tar.gz

COPY huc/huc/ huc/
RUN R CMD INSTALL huc
RUN rm -rf huc

COPY mixtbt_1.0_R_x86_64-pc-linux-gnu.tar.gz /mixtbt_1.0_R_x86_64-pc-linux-gnu.tar.gz 
RUN R CMD INSTALL /mixtbt_1.0_R_x86_64-pc-linux-gnu.tar.gz 
RUN rm /mixtbt_1.0_R_x86_64-pc-linux-gnu.tar.gz


WORKDIR /go/src/github.com/fjukstad/kvik/r/examples
