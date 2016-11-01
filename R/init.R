#' WPT server
#'
#' Detail a WPT server for tests
#' 
#' @param the WPT server URL defaults to <http://www.webpagetest.org>
#'
#' @return returns a WPTserver object to be used by other functions
#' @export
#'
#' @examples
#' \dontrun{
#' myServer <- server()
#' myServer
#' }

server <- function(serverURL = "http://www.webpagetest.org"){
  server <- list(url = serverURL)
  class(server) <- "WPTserver"
  invisible(server)
}