#' correlation.heatmap
#'
#' Visualizes n x m correlation table as heatmap. 
#'
#' @param df Data frame. Each row corresponds to a pair of correlated 
#'           variables. The columns give variable names, correlations and 
#'           significance estimates.
#' @param Xvar X axis variable column name. For instance 'X'.
#' @param Yvar Y axis variable column name. For instance 'Y'.
#' @param fill Column to be used for heatmap coloring. 
#'             For instance 'correlation'.
#' @param star Column to be used for cell highlighting. For instance 'p.adj'.
#' @param p.adj.threshold Significance threshold for the stars.
#' @param correlation.threshold Include only elements that have absolute 
#'                         	correlation higher than this value
#' @param step color interval
#' @param colours heatmap colours
#' @param limits colour scale limits
#' @param legend.text legend text
#' @param order.rows Order rows to enhance visualization interpretability
#' @param order.cols Order columns to enhance visualization interpretability
#' @param text.size Adjust text size
#' @param filter.significant Keep only the elements with at least one 
#'                           significant entry
#' @param star.size NULL Determine size of the highlight symbols
#'
#' @return ggplot2 object
#'
#' @import ggplot2 
#'
#' @examples 
#'   data(peerj32)
#'   d1 <- peerj32$lipids[, 1:10]
#'   d2 <- peerj32$microbes[, 1:10]
#'   cc <- cross.correlate(d1, d2) 
#'   p <- correlation.heatmap(cc, 'X1', 'X2', 'Correlation')
#'
#' @export
#' @references See citation('microbiome') 
#' @author Contact: Leo Lahti \email{microbiome-admin@@googlegroups.com}
#' @keywords utilities

correlation.heatmap <- function(df, Xvar, Yvar, fill, star = "p.adj", 
                            p.adj.threshold = 1, 
                            correlation.threshold = 0, step = 0.2, 
              colours = c("darkblue", "blue", "white", "red", "darkred"), 
               limits = NULL, legend.text = "", 
               order.rows = TRUE, order.cols = TRUE, 
    text.size = 10, filter.significant = TRUE, star.size = NULL) {
    
    if (is.null(limits)) {
        maxval <- max(abs(df[[fill]]))
        if (maxval <= 1) {
            limits <- c(-1, 1)
        } else {
            limits <- c(-maxval, maxval)
        }
    }
    
    
    if (nrow(df) == 0) {
        warning("Input data frame is empty.")
        return(NULL)
    }
    
    if (filter.significant) {
        keep.X <- as.character(unique(df[((df[[star]] < p.adj.threshold) 
                     & (abs(df[[fill]]) > 
            correlation.threshold)), Xvar]))
        keep.Y <- as.character(unique(df[((df[[star]] < p.adj.threshold) 
                     & (abs(df[[fill]]) > 
            correlation.threshold)), Yvar]))
        df <- df[((df[[Xvar]] %in% keep.X) & (df[[Yvar]] %in% keep.Y)), ]
    }
    
    theme_set(theme_bw(text.size))
    
    if (any(c("XXXX", "YYYY", "ffff") %in% names(df))) {
        stop("XXXX, YYYY, ffff are not allowed in df")
    }
    
    df[[Xvar]] <- factor(df[[Xvar]])
    df[[Yvar]] <- factor(df[[Yvar]])
    
    if (order.rows || order.cols) {
        
        rnams <- unique(as.character(df[[Xvar]]))
        cnams <- unique(as.character(df[[Yvar]]))
        
        mat <- matrix(0, nrow = length(rnams), ncol = length(cnams))
        rownames(mat) <- rnams
        colnames(mat) <- cnams
        for (i in 1:nrow(df)) {
            mat[as.character(df[i, Xvar]), 
                as.character(df[i, Yvar])] <- df[i, fill]
        }
        
        rind <- 1:nrow(mat)
        cind <- 1:ncol(mat)
        if (nrow(mat) > 1 && ncol(mat) > 1) {
	    rind <- hclust(as.dist(1-cor(t(mat), use = "pairwise.complete.obs")))$order
	    cind <- hclust(as.dist(1-cor(mat, use = "pairwise.complete.obs")))$order
            #hm <- heatmap(mat)
            # dev.off()
            #rind <- hm$rowInd
            #cind <- hm$colInd
        }
        if (ncol(mat) > 1 && nrow(mat) == 1) {
            cind <- order(mat[1, ])
        }
        if (nrow(mat) > 1 && ncol(mat) == 1) {
            rind <- order(mat[, 1])
        }
        
        if (order.cols) {
            message("Ordering columns")
            df[[Xvar]] <- factor(df[[Xvar]], levels = rownames(mat)[rind])
        }
        
        if (order.rows) {
            message("Ordering rows")
            df[[Yvar]] <- factor(df[[Yvar]], levels = colnames(mat)[cind])
        }
        
    }
    
    # ---------------------------------------------
    
    XXXX <- YYYY <- ffff <- NULL
    
    df[["XXXX"]] <- df[[Xvar]]
    df[["YYYY"]] <- df[[Yvar]]
    df[["ffff"]] <- df[[fill]]
    
    p <- ggplot(df, aes(x = XXXX, y = YYYY, fill = ffff))
    
    p <- p + geom_tile()
    
    p <- p + scale_fill_gradientn(legend.text, 
        breaks = seq(from = min(limits), to = max(limits), 
        by = step), colours = colours, limits = limits)
    
    p <- p + xlab("") + ylab("")
    
    p <- p + theme(axis.text.x = element_text(angle = 90))
    
    # Mark significant cells with stars
    inds <- which((df[[star]] < p.adj.threshold) 
        & (abs(df[[fill]]) > correlation.threshold))
    if (!is.null(star) & length(inds) > 0) {
        df.sub <- df[inds, ]
        
        if (is.null(star.size)) {
            star.size <- max(1, floor(text.size/2))
        }
        
        p <- p + geom_text(data = df.sub, aes(x = XXXX, y = YYYY, label = "+"), 
             col = "white", 
             size = star.size)
    }
    
    p
    
}


