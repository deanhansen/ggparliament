% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parliament_data.R
\name{parliament_data}
\alias{parliament_data}
\title{A function that prepares data for parliamentary plots}
\usage{
parliament_data(
  election_data = NULL,
  parl_rows = NULL,
  party_seats = election_data$seats,
  group = NULL,
  plot_order = NULL,
  type = c("horseshoe", "semicircle", "thirdcircle", "third_circle", "circle",
    "classroom", "opposing_benches")
)
}
\arguments{
\item{election_data}{aggregate election results}

\item{parl_rows}{number of rows in parliament}

\item{party_seats}{seats per party}

\item{group}{grouping variable for separate chunks. e.g. opposing benches in UK parliament}

\item{plot_order}{plot the data in a specified order}

\item{type}{type of parliament (horseshoe, semicircle, circle, classroom, opposing benches)}
}
\description{
A function that prepares data for parliamentary plots
}
\examples{
data <- election_data[
  election_data$country == "USA" &
    election_data$house == "Representatives" &
    election_data$year == "2016",
]
usa_data <- parliament_data(
  election_data = data,
  type = "semicircle",
  party_seats = data$seats,
  parl_rows = 8
)
}
\author{
Zoe Meers, Rob Hickman
}
