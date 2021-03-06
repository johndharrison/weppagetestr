% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getTestResults.R
\name{getTestResults}
\alias{getTestResults}
\title{Get HAR data}
\usage{
getTestResults(server, testId, requestId = NULL, breakDown = FALSE,
  domains = FALSE, pageSpeed = FALSE, requests = FALSE,
  medianMetric = NULL, medianRun = NULL, dryRun = FALSE, ...)
}
\arguments{
\item{server}{A WebPagetest server}

\item{testId}{test ID string}

\item{requestId}{request ID, useful to track asynchronous requests}

\item{breakDown}{include the breakdown of requests and bytes by mime 
type. Defaults to NULL = FALSE}

\item{domains}{include the breakdown of requests and bytes by domain.
Defaults to NULL = FALSE}

\item{pageSpeed}{logical value include the PageSpeed score in the 
response (may be slower). Defaults to NULL = FALSE}

\item{requests}{include the request data in the response (slower and 
results in much larger responses). Defaults to NULL = FALSE}

\item{medianMetric}{A string. Set the metric used to calculate median 
for multiple runs tests. Defaults to "loadTime" = NULL. Other options 
include "visualComplete", "SpeedIndex", "titleTime", "domTime", 
"docTime",  "fullyLoaded", "render", "TTFB"}

\item{medianRun}{set the run used for median for multiple runs tests. 
Defaults to "median = NULL. Other acceptable values include 
"fastest".}

\item{dryRun}{If TRUE just return the RESTful API URL. Defaults to 
FALSE}

\item{...}{Additonal function arguments}
}
\value{
returns a parsed HAR object from \code{\link[HARtools]{readHAR}}
}
\description{
get the HTTP Archive (HAR) from test
}
\examples{
\dontrun{
  WPT <- server()
  history <- getHistory(WPT, filter = "London")
  tID <- as.character(history[dim(history)[1], "Test ID"])
  testresults <- getTestResults(WPT, tID, requestId = "someID")
}
}

