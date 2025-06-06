% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_flag-env_var.R
\name{create_env_var_feature_flag}
\alias{create_env_var_feature_flag}
\title{Creates an instance of a feature flag
that is enabled based on an environment variable}
\usage{
create_env_var_feature_flag(env_var)
}
\arguments{
\item{env_var}{Name of the environment variable}
}
\value{
Feature flag that is enabled based on the specified environment variable
}
\description{
Creates an instance of a feature flag
that is enabled based on an environment variable
}
\examples{
{
  env_flag <- create_env_var_feature_flag(env_var = "FEATURE_X")
}
}
