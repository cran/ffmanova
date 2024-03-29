% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linregEnd.R, R/linregEst.R, R/linregStart.R
\name{linregEst}
\alias{linregEst}
\alias{linregEnd}
\alias{linregStart}
\title{Linear regression estimation}
\usage{
linregEnd(Umodel, Y)

linregEst(X, Y)

linregStart(X, rank_lim = 1e-09)
}
\arguments{
\item{Umodel}{this matrix is returned by \code{linregStart}}

\item{Y}{response matrix}

\item{X}{regressor matrix}

\item{rank_lim}{tuning parameter for the rank. The default value corresponds
to the rank function in Matlab.}
}
\value{
\code{linregEst} returns a list with seven components. The first
three components is returned by \code{linregStart} - the rest by
\code{linregEnd}.

\item{Umodel}{Matrix of score values according to the PCR model.}
\item{VmodelDivS}{Matrix that can be used to calculate \code{Umodel} from
\code{X}. That is, \code{Umodel} equals \code{X \%*\% VmodelDivS}.}
\item{VextraDivS1}{Matrix that can be used to check estimability. That is,
predictions for a new X cannot be made if \code{Xnew \%*\% VextraDivS1} is
(close to) zero.} \item{BetaU}{Matrix of regression parameters according to
the PCR model.} \item{msError}{Mean square error of each response}
\item{errorObs}{Error observations that can be used in multivariate testing}
\item{Yhat}{Fitted values. Equals \code{Umodel \%*\% BetaU} }
}
\description{
Function that performs multivariate multiple linear regression modelling
(\eqn{Y = XB + E}) according to a principal component regression (PCR)
approach where the number of components equals the number of nonzero
eigenvalues (generalised inverse).
}
\details{
The function \code{linregEst} performs the calculations in two steps by
calling \code{linregStart} and \code{linregEnd}. The former functions
function makes all calculations that can be done without knowing \eqn{Y}.
The singular value decomposition (SVD) is an essential part of the
calculations and some of the output variables are named according to SVD
(\samp{U}, \samp{S} and \samp{V}).
}
\note{
When the number of error degrees of freedom exceeds the number of
linearly independent responses, then the matrix of error observations is
made so that several rows are zero. In this case the zero rows are omitted
and a list with components \code{errorObs} and \code{df_error} is returned.
}
\seealso{
\code{\link{ffmanova}}
}
\author{
Øyvind Langsrud and Bjørn-Helge Mevik
}
\keyword{internal}
\keyword{multivariate}
\keyword{regression}
