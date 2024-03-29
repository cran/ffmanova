#' Dressing data
#' 
#' A dataset from an experiment studying structural and rheological properties
#' of a full fat dressing.
#' 
#' The data comes from an experiment in which full fat dressings were produced
#' with different amount of stabiliser and emulsifier, and with different
#' homogenisation pressure (se above).
#' 
#' A full factorial \eqn{3^3} design with two additional center points was
#' used.  The experiment was run over five days.  It was unknown up front how
#' many experimental runs could be performed each day, so the order of the runs
#' was randomised.
#' 
#' For each dressing, viscosity, rheology and particle volume measurements were
#' taken (se above).
#' 
#' The day is stored as a factor.  The other design variables are stored as
#' numerical variables.  If one wants to use them as factors, one can use e.g.
#' \code{factor(press)} in the model formula, or 
#' \code{dressing$press <- factor(dressing$press)} 
#' prior to calling the modelling function.
#' 
#' @name dressing
#' @docType data
#' @format A data frame with 29 observations on the following 7 variables.
#' \describe{ 
#' \item{press}{a numeric vector with values 75, 125 and
#' 225.  The homogenisation pressure.} 
#' \item{stab}{a numeric vector
#' with values 0.3, 0.4 and 0.5.  Amount of stabiliser.} 
#' \item{emul}{a
#' numeric vector with values 0.1, 0.2 and 0.35.  Amount of emulsifier.}
#' \item{day}{a factor with levels \code{1}, \dots{}, \code{5}.  The
#' day the experimental run was performed on.} 
#' \item{visc}{a numeric
#' vector.  The measured viscosity of the dressing.} 
#' \item{rheo}{a
#' matrix with 9 columns.  Nine different response-parameters derived from
#' rheological measuring.  These parameters contain information about the
#' physics of the dression (more general that viscosity).}
#' \item{pvol}{a matrix with 241 columns.  Particle-volume curves.
#' Using a coulter-counter instrument fat particles were counted and their
#' volumes were registered.  These data are presented as smoothed histograms
#' (equally spaced bins on log-scale).  The total area under the curve
#' represents the total volume of the counted fat particles. The shape of the
#' curve reflects how the total fat volume is distributed among the different
#' particle sizes.} }
#' @source The data is taken from a research project financed by a grant
#' (131472/112) from the Norwegian Research Council.  The project was managed
#' by Stabburet, which is a major manufacturer of dressing in Norway.
#' @keywords datasets
#' @usage data(dressing)
NULL



