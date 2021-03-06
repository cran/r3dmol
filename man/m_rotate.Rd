% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animation.R
\name{m_rotate}
\alias{m_rotate}
\title{Rotate scene by angle degrees around axis}
\usage{
m_rotate(id, angle, axis = "v", animationDuration = 0, fixedPath)
}
\arguments{
\item{id}{R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})}

\item{angle}{Angle, in degrees \code{numeric}, to rotate by.}

\item{axis}{Axis (\code{"x"}, \code{"y"}, \code{"z"}, \code{"vx"},
\code{"vy"}, \code{"vz"})
to rotate around. Default \code{"y"}. View relative (rather than model
relative) axes are prefixed with \code{"v"}. Axis can also be specified as a
vector.}

\item{animationDuration}{an optional parameter of milliseconds \code{numeric}
that denotes the duration of the rotation animation. Default \code{0} (no
animation)}

\item{fixedPath}{if \code{true} animation is constrained to
requested motion, overriding updates that happen during the animation}
}
\value{
R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})
}
\description{
Rotate scene by angle degrees around axis
}
\examples{
library(r3dmol)
r3dmol() \%>\%
  m_add_model(data = pdb_6zsl, format = "pdb") \%>\%
  m_rotate(angle = 90, axis = "y", animationDuration = 1000)
}
