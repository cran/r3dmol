% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common.R
\name{m_enable_fog}
\alias{m_enable_fog}
\title{Enable/disable fog for content far from the camera}
\usage{
m_enable_fog(id, fog = TRUE)
}
\arguments{
\item{id}{R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})}

\item{fog}{whether to enable or disable the fog, default is \code{TRUE}.}
}
\value{
R3dmol \code{id} or a \code{r3dmol} object (the output from
\code{r3dmol()})
}
\description{
Enable/disable fog for content far from the camera
}
\examples{
library(r3dmol)

r3dmol() \%>\%
  m_add_model(data = pdb_6zsl, format = "pdb") \%>\%
  m_set_style(style = m_style_cartoon()) \%>\%
  m_enable_fog(fog = FALSE)
}
