%% $Id: norm.Rd 49 2006-08-15 13:48:26Z bhm $
\encoding{latin1}
\name{norm}
\alias{norm}

\title{Matrix norm.}

\description{
  \code{norm(X)} returns the largest singular value of \code{X}; it is
  equivalent to \code{svd(X, nu = 0, nv = 0)$d[1]}.
}
\usage{
norm(X)
}
\arguments{
  \item{X}{a numeric matrix.}
}
\value{
  The largest singular value of \code{X}.
}
\author{�yvind Langsrud and Bj�rn-Helge Mevik}
\seealso{\code{\link{svd}}}
\keyword{array}
\keyword{algebra}