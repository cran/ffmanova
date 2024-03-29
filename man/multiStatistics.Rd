% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ffmanovatest.R
\name{multiStatistics}
\alias{multiStatistics}
\title{MANOVA test statistics}
\usage{
multiStatistics(ss)
}
\arguments{
\item{ss}{A list of eigenvalues}
}
\value{
A list with elements \item{D}{Wilks' Lambda} \item{E}{Roy's Largest
Root} \item{A}{Hotelling-Lawley Trace Statistic} \item{M}{Pillay-Bartlett
Trace Statistic}
}
\description{
The four classical MANOVA test statistics are calculated from a set of
eigenvalues.
}
\details{
These eigenvalues are also known as the squared canonical correlation
coefficients.
}
\author{
Øyvind Langsrud and Bjørn-Helge Mevik
}
\keyword{htest}
