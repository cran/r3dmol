% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animation.R
\name{m_zoom_to}
\alias{m_zoom_to}
\title{Zoom to center of atom selection}
\usage{
m_zoom_to(id, sel, animationDuration, fixedPath)
}
\arguments{
\item{id}{R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})}

\item{sel}{Selection specification specifying model and atom
properties to select. Default: all atoms in viewer.}

\item{animationDuration}{an optional parameter of milliseconds \code{numeric}
that denotes the duration of a zoom animation}

\item{fixedPath}{if \code{true} animation is constrained to
requested motion, overriding updates that happen during the animation}
}
\value{
R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})
}
\description{
Zoom to center of atom selection. The slab will be set appropriately for
the selection, unless an empty selection is provided, in which case there
will be no slab.
}
\examples{
library(r3dmol)

r3dmol() \%>\%
  m_add_model(data = pdb_6zsl, format = "pdb") \%>\%
  m_zoom_to()
}
