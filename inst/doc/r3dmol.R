## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----installation, eval=FALSE-------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("swsoyee/r3dmol")

## ----demo---------------------------------------------------------------------
library(r3dmol)

# Set up the initial viewer
r3dmol(
  viewer_spec = m_viewer_spec(
    cartoonQuality = 10,
    lowerZoomLimit = 50,
    upperZoomLimit = 350
  ),
  id = "demo",
  elementId = "demo"
) %>%
  # Add model to scene
  m_add_model(data = pdb_6zsl, format = "pdb") %>%
  # Zoom to encompass the whole scene
  m_zoom_to() %>%
  # Set style of structures
  m_set_style(style = m_style_cartoon(color = "#00cc96")) %>%
  # Set style of specific selection (selecting by secondary)
  m_set_style(
    sel = m_sel(ss = "s"),
    style = m_style_cartoon(color = "#636efa", arrows = TRUE)
  ) %>%
  # Style the alpha helix
  m_set_style(
    sel = m_sel(ss = "h"), # Style alpha helix
    style = m_style_cartoon(color = "#ff7f0e")
  ) %>%
  # Rotate the scene by given angle on given axis
  m_rotate(angle = 90, axis = "y") %>%
  # Animate the scene by spinning it
  m_spin()

## ----xyz----------------------------------------------------------------------
xyz <- "4
* (null), Energy   -1000.0000000
N     0.000005    0.019779   -0.000003   -0.157114    0.000052   -0.012746
H     0.931955   -0.364989    0.000003    1.507100   -0.601158   -0.004108
H    -0.465975   -0.364992    0.807088    0.283368    0.257996   -0.583024
H    -0.465979   -0.364991   -0.807088    0.392764    0.342436    0.764260
"

r3dmol(
  width = 400,
  height = 400,
  backgroundColor = "0xeeeeee",
  id = "demo_xyz",
  elementId = "demo_xyz"
) %>%
  m_add_model(
    data = xyz,
    format = "xyz",
    options = list(vibrate = list(frames = 10, amplitude = 1))
  ) %>%
  m_set_style(style = m_style_stick()) %>%
  m_animate(list(loop = "backAndForth")) %>%
  m_zoom_to()

## ----sdf----------------------------------------------------------------------
benz <- "
     RDKit          3D

  6  6  0  0  0  0  0  0  0  0999 V2000
   -0.9517    0.7811   -0.6622 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.2847    1.3329   -0.3121 C   0  0  0  0  0  0  0  0  0  0  0  0
    1.2365    0.5518    0.3512 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.9517   -0.7811    0.6644 C   0  0  0  0  0  0  0  0  0  0  0  0
   -0.2847   -1.3329    0.3144 C   0  0  0  0  0  0  0  0  0  0  0  0
   -1.2365   -0.5518   -0.3489 C   0  0  0  0  0  0  0  0  0  0  0  0
  1  2  2  0
  2  3  1  0
  3  4  2  0
  4  5  1  0
  5  6  2  0
  6  1  1  0
M  END
$$$$"

r3dmol(id = "demo_sdf", elementId = "demo_sdf") %>%
  m_add_model(data = benz, format = "sdf") %>%
  m_set_style(style = m_style_stick()) %>%
  m_set_style(
    sel = m_sel(model = 0),
    style = m_style_stick(colorScheme = "cyanCarbon")
  ) %>%
  m_zoom_to()

## ----Dynamic styles-----------------------------------------------------------
r3dmol() %>%
  m_add_model(data = pdb_1j72) %>%
  m_set_style(style = m_style_cartoon(
    colorfunc = "
        function(atom) {
          return atom.resi % 2 == 0 ? 'white' : 'green';
        }"
  )) %>%
  m_zoom_to() %>%
  m_png(width = 800)

## ----multiple viewers---------------------------------------------------------
m1 <- r3dmol() %>%
  m_add_model(data = pdb_6zsl, format = "pdb") %>%
  m_zoom_to()

m2 <- m1 %>%
  m_set_style(style = m_style_cartoon(color = "spectrum"))

m3 <- r3dmol() %>%
  m_add_model(data = pdb_1j72, format = "pdb") %>%
  m_set_style(style = m_style_stick()) %>%
  m_zoom_to()

m4 <- m3 %>%
  m_set_style(style = m_style_sphere())

m_grid(
  viewer = list(m1, m2, m3, m4),
  rows = 2,
  cols = 2,
  control_all = TRUE,
  viewer_config = m_viewer_spec(
    backgroundColor = "lightblue"
  )
)

