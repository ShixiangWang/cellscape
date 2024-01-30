
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CellScape

[![](https://img.shields.io/badge/release%20version-1.22.0-green.svg)](https://www.bioconductor.org/packages/cellscape)
[![download](http://www.bioconductor.org/shields/downloads/release/cellscape.svg)](https://bioconductor.org/packages/stats/bioc/cellscape)
[![R-CMD-check](https://github.com/ShixiangWang/cellscape/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ShixiangWang/cellscape/actions/workflows/R-CMD-check.yaml)

CellScape is a visualization tool for integrating single cell phylogeny
with genomic content to clearly display evolutionary progression and
tumour heterogeneity.

## Installation

To install CellScape, type the following commands in R:

``` r
# Bioc release version
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}
BiocManager::install("cellscape")

# GitHub devel version
BiocManager::install("ShixiangWang/cellscape")
```

## Examples

Check the examples by:

``` r
?cellscape
```

## Documentation

To view the documentation for CellScape, type the following command in
R:

``` r
?cellscape
```

or:

``` r
browseVignettes("cellscape")
```

## Citation

- [Smith, Maia A., et al. “E-scape: interactive visualization of
  single-cell phylogenetics and cancer evolution.” ***Nature Methods***
  14.6 (2017): 549-550.](https://www.nature.com/articles/nmeth.4303)

## Maintainer

- [Shixiang Wang](https://github.com/ShixiangWang)
