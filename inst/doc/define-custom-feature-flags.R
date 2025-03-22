## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(featureflag)

create_odd_feature_flag <- function(number) {
  flag <- create_feature_flag()

  flag$number <- number
  class(flag) <- c("odd_feature_flag", class(flag))

  flag
}

## -----------------------------------------------------------------------------
is_odd_feature_flag <- function(feature_flag) {
  inherits(feature_flag, "odd_feature_flag")
}

## -----------------------------------------------------------------------------
is_enabled.odd_feature_flag <- function(feature_flag) {
  stopifnot(is_odd_feature_flag(feature_flag))
  (feature_flag$number %% 2) != 0
}

## -----------------------------------------------------------------------------
my_odd_feature_flag <- create_odd_feature_flag(number = 3)

if (is_enabled(my_odd_feature_flag)) {
  print("The feature flag is on!")
}

