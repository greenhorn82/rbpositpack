% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lib-summary.R
\name{lib_summary}
\alias{lib_summary}
\title{Summary of installed functions}
\usage{
lib_summary(sizes = FALSE)
}
\arguments{
\item{sizes}{logical indicating whether or not calculate the directory size,
default false}
}
\value{
a \code{data.frame} containing two columns. One for the library and one
for the number of packages.
}
\description{
This functions generate a list of all installed packages, sorted by
individual folder. The main target is to install.
}
\examples{
lib_summary()
}
