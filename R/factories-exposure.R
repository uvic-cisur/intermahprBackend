## intermahpr - R package backend for the intermahp shiny app
## Copyright (C) 2018 Canadian Institute for Substance Use Research

#### Gamma Function Factories --------------------------------------------------

#' Factory for gamma distributions
#'
#'@description
#'We want easier access to gamma distributions with a wide array of fixed params
#'
#'@param shape,scale Gamma parameters for dgamma
#'
#'
makeGamma <- function(shape, scale) {
  function(x) dgamma(x, shape = shape, scale = scale)
}

#' Factory for normalized gamma distributions
#'
#'@param shape,scale Gamma parameters for dgamma
#'@param factor Factor to scale distribution by
#'
#'
makeNormalizedGamma <- function(shape, scale, factor) {
  function(x) factor * dgamma(x, shape = shape, scale = scale)
}
