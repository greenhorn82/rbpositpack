
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rbpositpack

<!-- badges: start -->
<!-- badges: end -->

The goal of rbpositpack is to package development!

## Installation

You can install the development version of rbpositpack from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("greenhorn82/rbpositpack")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(rbpositpack)

lib_summary()
#>                                                                  Library
#> 1                                     C:/Program Files/R/R-4.3.1/library
#> 2                        C:/Users/robert/AppData/Local/R/win-library/4.3
#> 3 C:/Users/robert/AppData/Local/Temp/RtmpshV0Zl/temp_libpath27b02ad451d5
#>   n_packages
#> 1         30
#> 2        347
#> 3          1

# Also calculate sizes

lib_summary(TRUE)
#>                                                                  Library
#> 1                                     C:/Program Files/R/R-4.3.1/library
#> 2                        C:/Users/robert/AppData/Local/R/win-library/4.3
#> 3 C:/Users/robert/AppData/Local/Temp/RtmpshV0Zl/temp_libpath27b02ad451d5
#>   n_packages  lib_size
#> 1         30  68858812
#> 2        347 745526081
#> 3          1     13909
```
