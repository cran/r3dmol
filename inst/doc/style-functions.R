## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----load-package-------------------------------------------------------------
library(r3dmol)

## -----------------------------------------------------------------------------
model <- r3dmol() %>% 
  m_add_model(data = pdb_6zsl) %>% 
  m_set_style(style = m_style_cartoon()) %>% 
  m_zoom_to()

model

## -----------------------------------------------------------------------------
model %>% 
  m_set_style(style = m_style_cartoon(color = 'spectrum', ribbon = TRUE)) %>% 
  m_add_outline() %>% 
  m_set_zoom_limits(upper = 200, lower = 30)


## -----------------------------------------------------------------------------
model %>%
  m_set_style(style = c(
    m_style_cartoon(
      color = "spectrum",
      ribbon = TRUE
    ),
    m_style_line()
  )) %>% 
  m_add_surface(
    atomsel = m_sel(chain = "A"), 
    style = m_style_surface(opacity = 0.9)
  ) %>% 
  m_add_outline()

## -----------------------------------------------------------------------------
model %>%
  m_add_style(
    style = c(
      m_style_stick(),
      m_style_sphere(scale = 0.3)
    ),
    sel = m_sel(resi = 1:10, 
                chain = "A", )
  ) %>%
  m_zoom_to(sel = m_sel(resi = 1:10, chain = "A"))

## -----------------------------------------------------------------------------
model %>%
  m_add_style(
    sel = m_sel(resi = 1:10),
    style = c(
      m_style_stick(),
      m_style_sphere(scale = 0.3)
    )
  ) %>%
  m_add_line(
    start = m_sel(
      resi = 1:10,
      chain = "A"
    ),
    end = m_sel(
      resi = 1:10,
      chain = "B"
    ), 
    dashed = TRUE
  ) %>%
  m_add_label(
    text = "The middle of the selection",
    sel = m_sel(resi = 1:10), 
    style = m_style_label(borderColor = "green", 
                          borderThickness = 1, 
                          inFront = FALSE)
  )

## ---- eval=TRUE---------------------------------------------------------------
model <- r3dmol() %>% 
  m_add_model(data = m_fetch_pdb("1bna", save.pdb = FALSE)) %>% 
  m_set_style(style = m_style_cartoon()) %>% 
  m_zoom_to()
model

## -----------------------------------------------------------------------------
library(bio3d)
pdb <- read.pdb("1bna") 

pdb

model2 <- r3dmol() %>% 
  m_add_model(data = m_bio3d(pdb)) %>% 
  m_set_style(style = m_style_cartoon()) %>% 
  m_zoom_to()

model2

