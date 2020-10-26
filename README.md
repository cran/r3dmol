
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r3dmol

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/swsoyee/r3dmol/branch/master/graph/badge.svg)](https://codecov.io/gh/swsoyee/r3dmol?branch=master)
[![R build
status](https://github.com/swsoyee/r3dmol/workflows/R-CMD-check/badge.svg)](https://github.com/swsoyee/r3dmol/actions)
<!-- badges: end -->

This is an R package that provides support for
[`3Dmol.js`](https://3dmol.csb.pitt.edu/index.html) as a
[`htmlwidgets`](https://www.htmlwidgets.org/).

## Installation

> This package is still very early in its development stages, everything
> will be changed very often\! Please give me a star on Github if you
> find it useful and I will speed up the development process\!

~~You can install the released version of r3dmol from
[CRAN](https://CRAN.R-project.org) with:~~

``` r
# Not available now.
# install.packages("r3dmol")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("swsoyee/r3dmol")
```

## Example

``` r
library(r3dmol)
r3dmol() %>%
  m_add_model(data = pdb_6zsl, format = "pdb") %>%
  m_zoom_to() %>%
  m_set_style(style = list(cartoon = list(color = 'spectrum')))
```

![picture](https://user-images.githubusercontent.com/20528423/92235475-aff64180-eeee-11ea-94b8-304ea64425b5.png)

## About `3Dmol.js`

> Nicholas Rego and David Koes 3Dmol.js: molecular visualization with
> WebGL Bioinformatics (2015) 31 (8): 1322-1324
> [doi:10.1093/bioinformatics/btu829](http://doi.org/10.1093/bioinformatics/btu829)
