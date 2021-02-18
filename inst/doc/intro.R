## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(featureflag)

## -----------------------------------------------------------------------------
my_bool_feature_flag <- create_bool_feature_flag(value = TRUE)

## -----------------------------------------------------------------------------
if (is_enabled(my_bool_feature_flag)) {
  print("Running my feature...")  
}

## -----------------------------------------------------------------------------
if (is_enabled(my_bool_feature_flag)) {
  print("Running my feature...")  
} else {
  print("Running my default functionality...")
}

## -----------------------------------------------------------------------------
feature_if(my_bool_feature_flag, {
  print("Running my feature...")
})

## -----------------------------------------------------------------------------
feature_ifelse(my_bool_feature_flag, {
  print("Running my feature...")
}, {
  print("Running my default_functionality...")
})

