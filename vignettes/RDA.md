### RDA analysis and visualization. 


Load the package and example data:


```r
library(microbiome, quietly = TRUE)
data(peerj32)  # From https://peerj.com/articles/32/

# Microbiota profiling data (44 samples x 130 bacteria)
l2 <- peerj32$microbes  

# Sample annotations
annot <- peerj32$meta
```

### Standard RDA 

Run standard RDA for microbiota profiles versus timepoint


```r
library(vegan)
rdatest<-rda(l2~annot$time) # Run RDA
permutest(rdatest) # RDA Significance test
```

```
## 
## Permutation test for rda 
## 
## Permutation: free
## Number of permutations: 99
##  
## Call: rda(formula = l2 ~ annot$time)
## Permutation test for all constrained eigenvalues
## Pseudo-F:	 0.3568663 (with 1, 42 Degrees of Freedom)
## Significance:	 0.97
```

### Controlling for confounding variables


```r
rdatest<-rda(l2~annot$time + Condition(annot$subject)) 
permutest(rdatest) # RDA significance test
```

```
## 
## Permutation test for rda 
## 
## Permutation: free
## Number of permutations: 99
##  
## Call: rda(formula = l2 ~ annot$time + Condition(annot$subject))
## Permutation test for all constrained eigenvalues
## Pseudo-F:	 0.756362 (with 1, 21 Degrees of Freedom)
## Significance:	 0.58
```

```r
# Including even more confounders (not run):
# rdatest<-rda(l2~annot$time + Condition(annot$subject + annot$sample))
```

### RDA visualization

Visualizing the standard RDA output:


```r
plot(rdatest, choices=c(1,2), type="points", pch=15, scaling=3, cex=0.7, col=annot$time)
points(rdatest, choices=c(1,2), pch=15, scaling=3, cex=0.7, col=annot$time)
pl <- ordihull(rdatest, annot$time, scaling = 3, label = TRUE)
title("RDA with control for subject effect")
```

![plot of chunk rda4](figure/rda4-1.png) 

### Bagged RDA

Calculate Bagged RDA and visualize the results:


```r
library(microbiome)
# Modify the group vector into a facor as required by Bagged RDA
y <- factor(annot$time); names(y) <- rownames(annot)

# Bagged RDA
Bag.res <- Bagged.RDA.Feature.Selection(t(l2), y, sig.thresh=0.05, nboot=100)
```

![plot of chunk rda5](figure/rda5-1.png) 

```r
# Visualize
PlotBaggedRDA(Bag.res, y)
```

![plot of chunk rda5](figure/rda5-2.png) 

