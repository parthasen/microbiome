<!--
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteIndexEntry{microbiome tutorial}
  %\usepackage[utf8]{inputenc}
-->
microbiome R package
====================

The microbiome package contains general-purpose tools for microarray-based analysis of microbiome profiling data sets in R (R Core Team, 2013); also relevant (Venables and Ripley, 2002)

### How to start

Example on reproducible document generation:

-   [Minimal example](Template.md)
-   [Example workflow](Atlas.md)

### Installation, example data sets and preprocessing

-   [Installing R tools](Installation.md)

### Data

-   [Download example data sets](Data.md)
-   [Extract data from HITChip database](https://github.com/microbiome/HITChipDB/blob/master/vignettes/vignette.md)
-   [Get phylogeny](Phylogeny.md)

### Visualization and related tools

Download some [example data sets](Data.md) to try these tools:

-   [Barplots](Barplots.md)
-   [Boxplots](Boxplots.md)
-   [Density](Density.md)
-   [Heatmaps](Heatmap.md)
-   [Motion charts](Motionchart.md)
-   [Oligo heatmap](Oligoheatmap.md)
-   [PCA and other ordination/projection methods](PCA.md)
-   [Cross hybridization](Crosshyb.md)

### Clustering

-   [Bimodality](Bimodality.md)
-   [Clustering](Clustering.md)

### Microbiota composition

-   [Core microbiota](Core.md)
-   [Diversity](Diversity.md)
-   [Probe level studies](Probelevel.md)
-   [RelativeAbundance](RelativeAbundance.md)
-   [Stability](Stability.md)

### Linear models, comparisons, and association studies

-   [Linear models](limma.md)
-   [Pairwise comparisons](Comparisons.md)
-   [Cross correlations](Crosscorrelation.md)

### Other statistical analysis

-   [ROC curves](ROC.md)
-   [RDA](RDA.md)

### Output

-   [Producing output files and figures](Output.md)

### Misc

-   [Miscellaneous](misc.md)

### Licensing and Citations

This work can be freely used, modified and distributed under the [Two-clause FreeBSD license](http://en.wikipedia.org/wiki/BSD_licenses).

Kindly cite the work as 'Leo Lahti and Jarkko Salojarvi (2014). microbiome R package. URL: <http://microbiome.github.com>'.

### Dependencies

The package utilizes tools from a number of other CRAN and Bioconductor extensions, including:

-   df2json (Caballero, 2013)
-   rjson (Couture-Beil, 2014)
-   ade4 (Dray and Dufour, 2007; Chessel, Dufour, and Thioulouse, 2004; Dray, Dufour, and Chessel, 2007)
-   mixOmics (Dejean, Gonzalez, Monget, et al., 2014)
-   RCurl (Temple Lang, 2014)
-   vegan (Oksanen, Blanchet, Kindt, et al., 2015)
-   reshape (Wickham and Hadley, 2007)
-   WGCNA (Langfelder and Horvath, 2008; Langfelder and Horvath, 2012)
-   ggplot2 (Wickham, 2009)
-   RPA (Lahti, Torrente, Elo, et al., 2013; Lahti, Elo, Aittokallio, et al., 2011)
-   minet (Meyer, Lafitte, and Bontempi, 2008)
-   fastcluster (Müllner, 2013)
-   plyr (Wickham, 2011)

### References

[1] N. Caballero. *df2json: Convert a dataframe to JSON*. R package version 0.0.2. 2013. <URL:
http://CRAN.R-project.org/package=df2json>.

[2] D. Chessel, A. Dufour and J. Thioulouse. "The ade4 package-I- One-table methods". In: *R News* 4 (2004), pp. 5-10.

[3] A. Couture-Beil. *rjson: JSON for R*. R package version 0.2.15. 2014. <URL: http://CRAN.R-project.org/package=rjson>.

[4] S. Dejean, I. Gonzalez, K. L. C. w. c. f. P. Monget, et al. *mixOmics: Omics Data Integration Project*. R package version 5.0-3. 2014. <URL: http://CRAN.R-project.org/package=mixOmics>.

[5] S. Dray and A. Dufour. "The ade4 package: implementing the duality diagram for ecologists". In: *Journal of Statistical Software* 22.4 (2007), pp. 1-20.

[6] S. Dray, A. Dufour and D. Chessel. "The ade4 package-II: Two-table and K-table methods." In: *R News* 7.2 (2007), pp. 47-52.

[7] L. Lahti, L. Elo, T. Aittokallio, et al. "Analysis of Probe Reliability in Differential Gene Expression Studies with Short Oligonucleotide Arrays". In: *TCBB/IEEE* 8 (1 2011). R/BioC: <http://bioconductor.org/packages/release/bioc/html/RPA.html>, pp. 217-225. <URL:
http://www.computer.org/portal/web/csdl/doi/10.1109/TCBB.2009.38.>.

[8] L. Lahti, A. Torrente, L. Elo, et al. "A fully scalable online-preprocessing algorithm for short oligonucleotide microarray atlases". In: *Nucleic Acids Research* 41 (10 2013), p. e110. <URL: URL:
http://nar.oxfordjournals.org/content/41/10/e110>.

[9] P. Langfelder and S. Horvath. "Fast R Functions for Robust Correlations and Hierarchical Clustering". In: *Journal of Statistical Software* 46.11 (2012), pp. 1-17. <URL:
http://www.jstatsoft.org/v46/i11/>.

[10] P. Langfelder and S. Horvath. "WGCNA: an R package for weighted correlation network analysis". In: *BMC Bioinformatics* (2008), p. 559.

[11] P. E. Meyer, F. Lafitte and G. Bontempi. "MINET: An open source R/Bioconductor Package for Mutual Information based Network Inference". In: *BMC Bioinformatics* 9 (2008). <URL:
http://www.biomedcentral.com/1471-2105/9/461>.

[12] D. Müllner. "fastcluster: Fast Hierarchical, Agglomerative Clustering Routines for R and Python". In: *Journal of Statistical Software* 53.9 (2013), pp. 1-18. <URL:
http://www.jstatsoft.org/v53/i09/>.

[13] J. Oksanen, F. G. Blanchet, R. Kindt, et al. *vegan: Community Ecology Package*. R package version 2.2-1. 2015. <URL:
http://CRAN.R-project.org/package=vegan>.

[14] R Core Team. *R: A language and environment for statistical computing*. Vienna, Austria: R Foundation for Statistical Computing, 2013. ISBN: ISBN 3-900051-07-0. <URL:
http://www.R-project.org/>.

[15] D. Temple Lang. *RCurl: General network (HTTP/FTP/...) client interface for R*. R package version 1.95-4.5. 2014. <URL:
http://CRAN.R-project.org/package=RCurl>.

[16] W. N. Venables and B. D. Ripley. *Modern Applied Statistics with S*. fourth. New York: Springer, 2002. ISBN: ISBN .

[17] H. Wickham. *ggplot2: elegant graphics for data analysis*. Springer New York, 2009. ISBN: 978-0-387-98140-6. <URL:
http://had.co.nz/ggplot2/book>.

[18] H. Wickham. "The Split-Apply-Combine Strategy for Data Analysis". In: *Journal of Statistical Software* 40.1 (2011), pp. 1-29. <URL: http://www.jstatsoft.org/v40/i01/>.

[19] Wickham and Hadley. "Reshaping data with the reshape package". In: *Journal of Statistical Software* 21.12 (2007). <URL: http://www.jstatsoft.org/v21/i12/paper>.

### Session info

This vignette was created with

``` r
sessionInfo()
```

    ## R version 3.1.2 (2014-10-31)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ##  [1] tcltk     grid      parallel  stats4    stats     graphics  grDevices
    ##  [8] utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ##  [1] googleVis_0.5.8      HITChipDB_0.5.13     RPA_1.22.0          
    ##  [4] affy_1.44.0          RMySQL_0.10.1        ade4_1.6-2          
    ##  [7] limma_3.22.4         gdata_2.13.3         netresponse_1.17.13 
    ## [10] mclust_4.4           minet_3.24.0         Rgraphviz_2.10.0    
    ## [13] graph_1.44.1         ggplot2_1.0.0        knitr_1.9           
    ## [16] dplyr_0.4.1          sorvi_0.7.17         microbiome_0.99.36  
    ## [19] AnnotationDbi_1.28.1 GenomeInfoDb_1.2.4   IRanges_2.0.1       
    ## [22] S4Vectors_0.4.0      Biobase_2.26.0       BiocGenerics_0.12.1 
    ## [25] RSQLite_1.0.0        DBI_0.3.1            reshape_0.8.5       
    ## [28] vegan_2.2-1          lattice_0.20-29      permute_0.8-3       
    ## [31] e1071_1.6-4          rdryad_0.1.1         knitcitations_1.0.5 
    ## [34] rmarkdown_0.5.1     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] acepack_1.3-3.3       affyio_1.34.0         ape_3.2              
    ##  [4] assertthat_0.1        bibtex_0.4.0          BiocInstaller_1.16.1 
    ##  [7] bitops_1.0-6          class_7.3-11          cluster_1.15.3       
    ## [10] codetools_0.2-9       colorspace_1.2-4      df2json_0.0.2        
    ## [13] digest_0.6.8          dmt_0.8.20            doParallel_1.0.8     
    ## [16] dynamicTreeCut_1.62   evaluate_0.5.5        fastcluster_1.1.15   
    ## [19] foreach_1.4.2         foreign_0.8-61        formatR_1.0          
    ## [22] Formula_1.2-0         GO.db_3.0.0           gtable_0.1.2         
    ## [25] gtools_3.4.1          Hmisc_3.15-0          htmltools_0.2.6      
    ## [28] httr_0.6.1            igraph_0.7.1          impute_1.40.0        
    ## [31] iterators_1.0.7       labeling_0.3          latticeExtra_0.6-26  
    ## [34] lazyeval_0.1.10       lubridate_1.3.3       magrittr_1.5         
    ## [37] MASS_7.3-37           Matrix_1.1-5          matrixStats_0.14.0   
    ## [40] memoise_0.2.1         mgcv_1.8-3            mixOmics_5.0-3       
    ## [43] munsell_0.4.2         mvtnorm_1.0-2         nlme_3.1-119         
    ## [46] nnet_7.3-8            OAIHarvester_0.1-7    pheatmap_0.7.7       
    ## [49] plyr_1.8.1            preprocessCore_1.28.0 proto_0.3-10         
    ## [52] qvalue_1.40.0         RColorBrewer_1.1-2    Rcpp_0.11.4          
    ## [55] RCurl_1.95-4.5        RefManageR_0.8.45     reshape2_1.4.1       
    ## [58] RGCCA_2.0             rgl_0.95.1201         rjson_0.2.15         
    ## [61] RJSONIO_1.3-0         rpart_4.1-9           scales_0.2.4         
    ## [64] splines_3.1.2         stringr_0.6.2         survival_2.37-7      
    ## [67] tools_3.1.2           WGCNA_1.43            XML_3.98-1.1         
    ## [70] yaml_2.1.13           zlibbioc_1.12.0
