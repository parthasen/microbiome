% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/similarity.R
\name{distance.matrix}
\alias{distance.matrix}
\title{Calculate distance matrix between the _columns_ of the
input matrix. Can prduce correlation-based distance matrices, otherwise
uses the standard 'dist' function.}
\usage{
distance.matrix(x, method = "pearson", ...)
}
\arguments{
\item{x}{data matrix}

\item{method}{distance method}

\item{...}{other arguments to be passed}
}
\value{
distance object
}
\description{
Calculate distance matrix between the _columns_ of the
input matrix. Can prduce correlation-based distance matrices, otherwise
uses the standard 'dist' function.
}
\examples{
data(peerj32)
  d <- distance.matrix(peerj32$microbes[1:10, 1:3])
}
\author{
Contact: Leo Lahti \email{microbiome-admin@googlegroups.com}
}
\references{
See citation('microbiome')
}
\keyword{utilities}

