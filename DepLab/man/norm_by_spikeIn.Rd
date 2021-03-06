% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_wrangling.R
\name{norm_by_spikeIn}
\alias{norm_by_spikeIn}
\title{Normalize values based on spike-in}
\usage{
norm_by_spikeIn(long.dt, spike.dt)
}
\arguments{
\item{long.dt}{data.table with one entry per protein and fraction with values
for one (!) type of measurement, e.g. raw intensity; it should have keys for
'fraction', 'measurement', and 'expt.id'}

\item{spike.dt}{data.table of the same format as long.dt, but with values
from the standard protein that was spiked-in in equal amounts into each
fraction; it should have keys for 'fraction', 'measurement', and 'expt.id'}
}
\value{
It returns a data.table with the same structure except that the
'value' column will contain normalized values and the 'measurement' column 
will have been updated to reflect the normalization.
}
\description{
This function will normalize the values of each fraction (for all proteins) to the
corresponding value from the spike-in control in that fraction
("column-wise normalization").
}
\seealso{
\code{\link{normalize_values}}
}
