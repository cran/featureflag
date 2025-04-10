% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_flag-connect_group.R
\name{is_enabled.connect_group_feature_flag}
\alias{is_enabled.connect_group_feature_flag}
\title{Checks if the given connect group feature flag is enabled}
\usage{
\method{is_enabled}{connect_group_feature_flag}(feature_flag)
}
\arguments{
\item{feature_flag}{flag to be checked whether it is
enabled}
}
\value{
TRUE if the logged in user belongs to a group defined
in the feature flag
}
\description{
Checks if the given connect group feature flag is enabled
}
\details{
The session$groups field is used for retrieving the information
on the logged-in user groups
}
\examples{
{
  flag <- create_connect_group_feature_flag(c("group1"))

  # Returns TRUE when the logged-in user belongs to at least one of the specified groups
  mock_session <- shiny::MockShinySession$new()
  mock_session$groups <- "group1"
  shiny::withReactiveDomain(
    domain = mock_session,
    expr = is_enabled(flag)
  )

  # Returns FALSE if session$groups does not have any of the specified groups
  mock_session <- shiny::MockShinySession$new()
  mock_session$user <- "group2"
  shiny::withReactiveDomain(
    domain = mock_session,
    expr = is_enabled(flag)
  )
}
}
