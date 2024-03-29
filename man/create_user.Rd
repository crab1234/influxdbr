% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/influxdb_authentication_and_authorization.R
\name{create_user}
\alias{create_user}
\alias{drop_user}
\alias{grant_privileges}
\alias{revoke_privileges}
\alias{show_users}
\alias{show_grants}
\title{Influx authentication and authorization}
\usage{
create_user(con, username, password)

drop_user(con, username)

grant_privileges(con, privilege = c("READ", "WRITE", "ALL"), db,
  username)

revoke_privileges(con, privilege = c("READ", "WRITE", "ALL"), db,
  username)

show_users(con)

show_grants(con, username)
}
\arguments{
\item{con}{An \code{influx_connection} object (s. \code{\link{influx_connection}}).}

\item{username}{The username to be used.}

\item{password}{The password to be used.}

\item{privilege}{Specifies the user privilege.}

\item{db}{Sets the target database.}
}
\value{
A tibble containing post results in case of an error (or message).
Otherwise NULL (invisibly). \code{show_users()} and \code{show_grants()} return a tibble.
}
\description{
The folllowing functions are convenient wrappers around \code{influx_post}
and \code{influx_query} (show_users and show grants).
\itemize{
\item \code{create_user()}: creates a new user
\item \code{drop_user()}: drops an existing user
\item \code{grant_privileges()}: grant privileges to an existing users
\item \code{revoke_privileges()}: revoke privileges to an existing users
\item \code{show_users()}: show all users
\item \code{show_grants()}: show grants of an user
}
}
\references{
\url{https://docs.influxdata.com/influxdb/}
}
\seealso{
\code{\link[influxdbr]{influx_connection}}
}
