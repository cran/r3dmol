% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/style.R
\name{m_shape_spec}
\alias{m_shape_spec}
\title{Specify Styling for Generic Shapes}
\usage{
m_shape_spec(
  color = NULL,
  opacity = 1,
  wireframe = FALSE,
  hidden = FALSE,
  frame = NULL,
  clickable = FALSE,
  callback = NULL,
  hoverable = FALSE,
  hover_callback = NULL,
  unhover_callback = NULL
)
}
\arguments{
\item{color}{Solid color values.}

\item{opacity}{Transparency value. 1 for opaque, 0 for invisible.}

\item{wireframe}{Draw as wireframe, not solid surface.}

\item{hidden}{If true, do not display object.}

\item{frame}{If set, only display in this frame of an animation.}

\item{clickable}{If true, user can click on object to trigger callback.}

\item{callback}{Function to call on click.}

\item{hoverable}{Logical, enabling hover_callback and unhover_callback
functions to be called. Set hoverDuration in the viewer_spec() of r3dmol().}

\item{hover_callback}{Function to be called upon hover.}

\item{unhover_callback}{Function to be called upon hover stopping.}
}
\description{
Styling options for the various shapes. Used inside \code{m_add_sphere()},
\code{m_add_arrow()}, \code{m_add_cylinder()} etc.
}
\examples{
library(r3dmol)
\dontrun{
r3dmol() \%>\%
  m_add_model(data = m_fetch_pdb("1bna")) \%>\%
  m_add_sphere(
    center = m_sel(resi = 1),
    spec = m_shape_spec(color = "green", wireframe = TRUE)
  ) \%>\%
  m_zoom_to(sel = m_sel(resi = 1))
}
}
