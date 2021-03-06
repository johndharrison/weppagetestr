% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cancelTest.R
\name{cancelTest}
\alias{cancelTest}
\title{Cancel test}
\usage{
cancelTest(server, testId, key = Sys.getenv("WPTKEY"), dryRun = FALSE, ...)
}
\arguments{
\item{server}{A WebPagetest server}

\item{testId}{test ID string}

\item{key}{API key (if assigned). Contact the WebPageTest server 
administrator for a key if required}

\item{dryRun}{If TRUE just return the RESTful API URL. Defaults to 
FALSE}

\item{...}{Additonal function arguments}
}
\value{
A
}
\description{
cancel running/pending test
}
\examples{
\dontrun{
  WPT <- server()
  locs <- getLocations(WPT)
  
  lMax <- which.max(vapply(locs, 
                           function(x) x$PendingTests$Total, integer(1)))
  maxLoc <-locs[[lMax]]
  test <- runTest(WPT, "r-project.org", 
                  location = paste0(maxLoc$location,
                                    ":Chrome"))
  cTest <- cancelTest(WPT, test$testId)
}
}

