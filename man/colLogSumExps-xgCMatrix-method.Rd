% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R, R/methods_row.R
\name{colLogSumExps,xgCMatrix-method}
\alias{colLogSumExps,xgCMatrix-method}
\alias{rowLogSumExps,xgCMatrix-method}
\title{Accurately calculates the logarithm of the sum of exponentials for each row
(column) of a matrix-like object}
\usage{
\S4method{colLogSumExps}{xgCMatrix}(lx, rows = NULL, cols = NULL, na.rm = FALSE)

\S4method{rowLogSumExps}{xgCMatrix}(lx, rows = NULL, cols = NULL, na.rm = FALSE)
}
\arguments{
\item{lx}{An NxK matrix-like object. Typically \code{lx} are \code{log(x)} values.}

\item{rows}{A \code{\link{vector}} indicating the subset (and/or
columns) to operate over. If \code{\link{NULL}}, no subsetting is done.}

\item{cols}{A \code{\link{vector}} indicating the subset (and/or
columns) to operate over. If \code{\link{NULL}}, no subsetting is done.}

\item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link{NA}}s
are excluded first, otherwise not.}
}
\value{
Returns a \code{\link{numeric}} \code{\link{vector}} of length N (K).
}
\description{
Accurately calculates the logarithm of the sum of exponentials for each row
(column) of a matrix-like object.
}
\details{
The S4 methods for \code{x} of type \code{\link{matrix}},
\code{\link{array}}, or \code{\link{numeric}} call
\code{matrixStats::rowLogSumExps}
/ \code{matrixStats::colLogSumExps}.
}
\examples{
mat <- matrix(rnorm(15), nrow = 5, ncol = 3)
  mat[2, 1] <- NA
  mat[3, 3] <- Inf
  mat[4, 1] <- 0
  
  print(mat)
  
  rowLogSumExps(mat)
  colLogSumExps(mat)
}
\seealso{
\itemize{
\item \code{matrixStats::\link[matrixStats]{rowLogSumExps}()} and
\code{matrixStats::\link[matrixStats:rowLogSumExps]{colLogSumExps}()}
which are used when the input is a \code{matrix} or \code{numeric} vector.
\item \code{\link[MatrixGenerics:rowSums2]{rowSums2()}}
}
}
