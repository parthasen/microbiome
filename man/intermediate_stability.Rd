% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/stability.R
\name{intermediate_stability}
\alias{intermediate_stability}
\title{intermediate_stability}
\usage{
intermediate_stability(dat, meta, reference.point = NULL, method = "lm")
}
\arguments{
\item{dat}{Input data matrix (variables x samples)}

\item{meta}{Metadata (samples x factors). This should contain for each sample
the following self-explanatory fields: subjectID and time.}

\item{reference.point}{Calculate stability of the data w.r.t. this point.
By default the intermediate range is used (min + (max - min)/2)}

\item{method}{"lm" (linear model) or "correlation"; the linear model takes time into account
             as a covariate}
}
\value{
A list with following elements:
	     stability: vector listing the intermediate stability for each variable
	     data: processed data sets used for calculations
}
\description{
Quantify stability with respect to a given reference point for all variables.
}
\details{
This method decomposes the data set into differences between
consecutive time points. For each variable and time point we calculate
for the data values: (i) the distance from reference point; (ii)
distance from the data value at the consecutive time point. The
"correlation" method calculates correlation between these two
variables. Negative correlations indicate that values closer to
reference point tend to have larger shifts in the consecutive time
point. The "lm" method takes the time lag between the consecutive time
points into account as this may affect the comparison and is not taken
into account by the straightforward correlation. Here the coefficients
of the following linear model are used to assess stability:
abs(change) ~ time + abs(start.reference.distance)
}
\examples{
# Create simulated example data
  dat <- matrix(rnorm(1000), nrow = 10)
  rownames(dat) <- paste("Variable", 1:nrow(dat), sep = "")
  colnames(dat) <- paste("Sample", 1:ncol(dat), sep = "")
  meta <- data.frame(list(
    	  sampleID = colnames(dat),
  	  subjectID = rep(paste("subject", 1:50, sep = "-"), each = 2),
	  time = rep(1:2, 50)))
  # Intentionally make point very unstable around 0
  dat[1, meta$time == 2] <- 1/abs(dat[1, meta$time == 1])
  s <- intermediate_stability(dat, meta, reference.point = 0)
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}

