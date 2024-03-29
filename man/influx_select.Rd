% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/influxdb_select.R
\name{influx_select}
\alias{influx_select}
\title{influx select helper}
\usage{
influx_select(con, db, field_keys, rp = NULL, measurement,
  where = NULL, group_by = NULL, limit = NULL, slimit = FALSE,
  offset = NULL, order_desc = FALSE, return_xts = TRUE,
  simplifyList = FALSE)
}
\arguments{
\item{con}{An \code{influx_connection} object (s. \code{\link{influx_connection}}).}

\item{db}{Sets the target database for the query.}

\item{field_keys}{Specifies the fields to be selected.}

\item{rp}{The name of the retention policy.}

\item{measurement}{Character vector containing name(s) of the measurement(s).}

\item{where}{Apply filter on tag key values.}

\item{group_by}{The group_by clause in InfluxDB is used not only for
grouping by given values, but also for grouping by given time buckets.}

\item{limit}{Limits the number of the n oldest points to be returned.}

\item{slimit}{logical. Sets limiting procedure (slimit vs. limit).}

\item{offset}{Offsets the returned points by the value provided.}

\item{order_desc}{logical. Change sort order to descending.}

\item{return_xts}{logical. Sets the return type. If set to TRUE, a list of xts objects
is returned, FALSE gives list of tibbles.}

\item{simplifyList}{logical. If only one series is returned, the result can
be flatten to directly get either a tibble or an xts object (instead of a list)
(default is FALSE).}
}
\value{
A list of xts or tibbles. Empty query results yield to NULL.
}
\description{
This function is a convenient wrapper for selecting data from a measurement
by calling \code{influx_query} with the corresponding query.
}
\references{
\url{https://docs.influxdata.com/influxdb/}
}
