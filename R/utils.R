WPTPaths <- 
  list(testStatus = "testStatus.php", 
       testResults = "jsonResult.php", 
       locations = "getLocations.php", 
       testers = "getTesters.php",
       test = "runtest.php", 
       gzip = "getgzip.php", 
       har = "export.php", 
       waterfall = "waterfall.php", 
       thumbnail = "thumbnail.php", 
       cancel = "cancelTest.php", 
       history = "testlog.php", 
       videoCreation = "video/create.php", 
       videoView = "video/view.php", 
       googleCsi = "google/google_csi.php", 
       responseBody = "response_body.php", 
       timeline = "getTimeline.php"
  )

WPTfileNames <- list(pageSpeed = "pagespeed.txt", 
                     utilization = "progress.csv", 
                     request = "IEWTR.txt", 
                     netLog = "netlog.txt", 
                     chromeTrace = "trace.json", 
                     consoleLog = "console_log.json", 
                     testInfo = "testinfo.json", 
                     history = "history.csv", 
                     waterfall = "waterfall.png", 
                     screenshot = "screen.jpg", 
                     screenshotStartRender = "screen_render.jpg", 
                     screenshotDocumentComplete = "screen_doc.jpg", 
                     screenshotFullResolution = "screen.png", 
                     cached = "_Cached"
)

WPTOptions <- 
  list(server = 
         list(
           name = "server", 
           key = "s", 
           param = "server", 
           info = "the WPT server URL [%s]"
         ), 
       dryRun = 
         list(
           name = "dryRun", 
           key = "d", 
           bool = TRUE, 
           info = "just return the RESTful API URL"
         ), 
       location = 
         list(
           name = "location", 
           key = "l", 
           api = "location", 
           param = "location", 
           info = "location to test from"
         ), 
       connectivity = 
         list(
           name = "connectivity", 
           key = "y", 
           api = "connectivity", 
           param = "profile", 
           info = "connectivity profile (Cable|DSL|FIOS|Dial|3G|3GFast|Native|custom) [Cable]"
         ), 
       runs = 
         list(
           name = "runs", 
           key = "r", 
           api = "runs", 
           param = "number", 
           info = "number of test runs [1]"
         ), 
       firstViewOnly = 
         list(
           name = "firstViewOnly", 
           key = "f", 
           api = "fvonly", 
           bool = TRUE, 
           info = "skip the Repeat View test"
         ), 
       video = 
         list(
           name = "video", 
           key = "v", 
           api = "video", 
           bool = TRUE, 
           info = "capture video"
         ), 
       private = 
         list(name = "private", 
              key = "p", 
              api = "private", 
              bool = TRUE, 
              info = "keep the test hidden from the test log"
         ), 
       label = 
         list(name = "label", 
              key = "L", 
              api = "label", 
              param = "label", 
              info = "label for the test"
         ), 
       stopAtDocumentComplete = 
         list(
           name = "stopAtDocumentComplete", 
           key = "i", 
           api = "web10", 
           bool = TRUE, 
           info = "stop test at document complete. typically, tests run until all activity stops"
         ), 
       disableJavaScript = 
         list(name = "disableJavaScript", 
              key = "S", 
              api = "noscript", 
              bool = TRUE, 
              info = "disable javascript (IE, Chrome, Firefox)"
         ), 
       clearCerts = 
         list(
           name = "clearCerts", 
           key = "C", 
           api = "clearcerts", 
           bool = TRUE, 
           info = "clear SSL certificate caches"
         ), 
       ignoreSSL = 
         list(name = "ignoreSSL", 
              key = "R", 
              api = "ignoreSSL", 
              bool = TRUE, 
              info = "ignore SSL certificate errors, e.g. name mismatch, self-signed certificates, etc"
         ), 
       disableCompatibilityView = 
         list(
           name = "disableCompatibilityView", 
           key = "T", 
           api = "standards", 
           bool = TRUE, 
           info = "forces all pages to load in standards mode (IE only)"
         ), 
       tcpDump = 
         list(
           name = "tcpDump", 
           key = "u", 
           api = "tcpdump", 
           bool = TRUE, 
           info = "capture network packet trace (tcpdump)"
         ), 
       saveResponseBodies = 
         list(
           name = "saveResponseBodies", 
           key = "O", 
           api = "bodies", 
           bool = TRUE, 
           info = "save response bodies for text resources"
         ), 
       keepOriginalUserAgent = 
         list(
           name = "keepOriginalUserAgent", 
           key = "K", 
           api = "keepua", 
           bool = TRUE, 
           info = "do not add PTST to the original browser User Agent string"
         ), 
       domElement = 
         list(
           name = "domElement", 
           key = "m", 
           api = "domelement", 
           param = "element", 
           info = "DOM element to record for sub-measurement"
         ), 
       minimumDuration = 
         list(
           name = "minimumDuration", 
           key = "N", 
           api = "time", 
           param = "seconds", 
           info = "minimum test duration in seconds"
         ), 
       tester = 
         list(
           name = "tester", 
           key = "E", 
           api = "tester", 
           param = "name", 
           info = "run the test on a specific PC (name must match exactly or the test will not run)"
         ), 
       emulateMobile = 
         list(
           name = "emulateMobile", 
           key = "W", 
           api = "mobile", 
           bool = TRUE, 
           info = "(experimental) emulate mobile browser: Chrome mobile user agent, 640x960 screen, 2x scaling and fixed viewport (Chrome only)"
         ), 
       timeline = 
         list(
           name = "timeline", 
           key = "M", 
           api = "timeline", 
           bool = TRUE, 
           info = "capture Developer Tools Timeline (Chrome only)"
         ), 
       timelineCallStack = 
         list(
           name = "timelineCallStack", 
           key = "J", 
           api = "timelineStack", 
           bool = TRUE, 
           info = "set between 1-5 to include the JS call stack. must be used in conjunction with timeline (increases overhead) (Chrome only)", 
           valid = list()
         ), 
       chromeTrace = 
         list(
           name = "chromeTrace", 
           key = "q", 
           api = "trace", 
           bool = TRUE, 
           info = "capture chrome trace (about://tracing) (Chrome only)"
         ), 
       netLog = 
         list(
           name = "netLog", 
           key = "G", 
           api = "netlog", 
           bool = TRUE, 
           info = "capture Network Log (Chrome only)"
         ), 
       dataReduction = 
         list(
           name = "dataReduction", 
           key = "Q", 
           api = "dataReduction", 
           bool = TRUE, 
           info = "enable data reduction on Chrome 34+ Android (Chrome only)"
         ), 
       userAgent = 
         list(name = "userAgent", 
              key = "x", 
              api = "uastring", 
              param = "string", 
              info = "custom user agent string (Chrome only)"
         ), 
       commandLine = 
         list(
           name = "commandLine", 
           key = "X", 
           api = "cmdline", 
           param = "switches", 
           info = "use a list of custom command line switches (Chrome only)"
         ), 
       login = 
         list(
           name = "login", 
           key = "g", 
           api = "login", 
           param = "username", 
           info = "username for authenticating tests (http authentication)"
         ), 
       password = 
         list(
           name = "password", 
           key = "w", 
           api = "password", 
           param = "password", 
           info = "password for authenticating tests (http authentication)"
         ), 
       sensitive = 
         list(
           name = "sensitive", 
           key = "t", 
           api = "sensitive", 
           bool = TRUE, 
           info = "discard script and http headers in the result"
         ), 
       disableHTTPHeaders = 
         list(
           name = "disableHTTPHeaders", 
           key = "H", 
           api = "noheaders", 
           bool = TRUE, 
           info = "disable saving of the http headers (as well as browser status messages and CPU utilization)"
         ), 
       block = 
         list(
           name = "block", 
           key = "b", 
           api = "block", 
           param = "urls", 
           array = TRUE, 
           info = "space-delimited list of urls to block (substring match)"
         ), 
       spof = 
         list(
           name = "spof", 
           key = "Z", 
           api = "spof", 
           param = "domains", 
           array = TRUE, 
           info = "space-delimited list of domains to simulate failure by re-routing to blackhole.webpagetest.org to silently drop all requests"
         ), 
       customMetrics = 
         list(
           name = "customMetrics", 
           key = "c", 
           api = "custom", 
           param = "script", 
           info = "execute arbitrary javascript at the end of a test to collect custom metrics"
         ), 
       authenticationType = 
         list(
           name = "authenticationType", 
           key = "a", 
           api = "authType", 
           param = "type", 
           info = "type of authentication: 0 = Basic, 1 = SNS [0]"
         ), 
       notifyEmail = 
         list(
           name = "notifyEmail", 
           key = "n", 
           api = "notify", 
           param = "e-mail", 
           info = "e-mail address to notify with the test results"
         ), 
       pingback = 
         list(
           name = "pingback", 
           key = "B", 
           api = "pingback", 
           param = "url", 
           info = "URL to ping when the test is complete (the test ID will be passed as an \"id\" parameter)"
         ), 
       bandwidthDown = 
         list(
           name = "bandwidthDown", 
           key = "D", 
           api = "bwDown", 
           param = "bandwidth", 
           info = "download bandwidth in Kbps (used when specifying a custom connectivity profile)"
         ), 
       bandwidthUp = 
         list(
           name = "bandwidthUp", 
           key = "U", 
           api = "bwUp", 
           param = "bandwidth", 
           info = "upload bandwidth in Kbps (used when specifying a custom connectivity profile)"
         ), 
       latency = 
         list(
           name = "latency", 
           key = "Y", 
           api = "latency", 
           param = "time", 
           info = "first-hop Round Trip Time in ms (used when specifying a custom connectivity profile)"
         ), 
       packetLossRate = 
         list(name = "packetLossRate", 
              key = "P", 
              api = "plr", 
              param = "percentage", 
              info = "packet loss rate - percent of packets to drop (used when specifying a custom connectivity profile)"
         ), 
       disableOptimization = 
         list(
           name = "disableOptimization", 
           key = "z", 
           api = "noopt", 
           bool = TRUE, 
           info = "disable optimization checks (for faster testing)"
         ), 
       disableScreenshot = 
         list(
           name = "disableScreenshot", 
           key = "I", 
           api = "noimages", 
           bool = TRUE, 
           info = "disable screen shot capturing"
         ), 
       fullResolutionScreenshot = 
         list(
           name = "fullResolutionScreenshot", 
           key = "F", 
           api = "pngss", 
           bool = TRUE, 
           info = "save a full-resolution version of the fully loaded screen shot as a PNG"
         ), 
       jpegQuality = 
         list(
           name = "jpegQuality", 
           key = "j", 
           api = "iq", 
           param = "level", 
           info = "jpeg compression level (30-100) for the screen shots and video capture"
         ), 
       medianVideo = 
         list(
           name = "medianVideo", 
           key = "A", 
           api = "mv", 
           bool = TRUE, 
           info = "store the video from the median run when capturing video is enabled"
         ), 
       htmlBody = 
         list(
           name = "htmlBody", 
           api = "htmlbody", 
           bool = TRUE, 
           info = "save the content of only the base HTML response"
         ), 
       tsView = 
         list(
           name = "tsView", 
           api = "tsview_id", 
           param = "id", 
           info = "test name to use when submitting results to tsviewdb (for private instances that have integrated with tsviewdb)"
         ), 
       tsViewConfigs = 
         list(
           name = "tsViewConfigs", 
           api = "tsview_configs", 
           param = "string", 
           info = "configs to use when submitting results to tsviewdb (for private instances that have integrated with tsviewdb)"
         ), 
       affinity = 
         list(
           name = "affinity", 
           api = "affinity", 
           param = "string", 
           info = "string to hash test to a specific test agent. tester will be picked by index among available testers"
         ), 
       priority = 
         list(
           name = "priority", 
           api = "priority", 
           param = "number", 
           info = "change test priority (0-9) [enforced by API key, otherwise 5]", 
           valid = list()
         ), 
       blockAds = 
         list(
           name = "blockAds", 
           api = "blockads", 
           bool = TRUE, 
           info = "block ads defined by adblockrules.org"
         ), 
       continuousVideoCapture = 
         list(
           name = "continuousVideoCapture", 
           api = "continuousVideo", 
           bool = TRUE, 
           info = "capture video continuously (unstable/experimental, may cause tests to fail)"
         ), 
       forceSpdy3 = 
         list(
           name = "forceSpdy3", 
           api = "spdy3", 
           bool = TRUE, 
           info = "force SPDY version 3 (Chrome only)"
         ), 
       forceSoftwareRendering = 
         list(
           name = "forceSoftwareRendering", 
           api = "swrender", 
           bool = TRUE, 
           info = "force software rendering, disable GPU acceleration (Chrome only)"
         ), 
       pollResults = 
         list(
           name = "pollResults", 
           param = "interval", 
           optional = TRUE, 
           info = "poll for results after test is scheduled at every <interval> seconds [5]"
         ), 
       waitResults = 
         list(
           name = "waitResults", 
           param = "hostname:port", 
           optional = TRUE, 
           info = "wait for test results informed by agent once complete listening on <hostname>:<port> [hostname:first port available above 8000]"
         ), 
       timeout = 
         list(
           name = "timeout", 
           param = "seconds", 
           info = "timeout for polling and waiting results [no timeout]"
         ), 
       requestId = 
         list(
           name = "requestId", 
           key = "e", 
           api = "r", 
           param = "id", 
           info = "echo request ID, useful to track asynchronous requests"
         ), 
       run = 
         list(
           name = "run", 
           key = "r", 
           param = "number", 
           info = "which run number on a multiple runs test [1]"
         ), 
       repeatView = 
         list(
           name = "repeatView", 
           key = "c", 
           bool = TRUE, 
           info = "get the Repeat View (cached view) instead of default First View (primed cache)"
         ), 
       thumbnail = 
         list(
           name = "thumbnail", 
           key = "t", 
           bool = TRUE, 
           info = "get the thumbnail of actual image"
         ), 
       dataURI = 
         list(
           name = "dataURI", 
           key = "u", 
           bool = TRUE, 
           info = "return the base64 string representation (inline) of actual image"
         ), 
       fullResolution = 
         list(
           name = "fullResolution", 
           key = "f", 
           bool = TRUE, 
           info = "get full resolution screenshot in PNG format if available"
         ), 
       startRender = 
         list(
           name = "startRender", 
           key = "n", 
           bool = TRUE, 
           info = "get the page screenshot at the Start Render point (i.e.: when something was first displayed on screen)"
         ), 
       documentComplete = 
         list(
           name = "documentComplete", 
           key = "p", 
           bool = TRUE, 
           info = "get the page screenshot at the Document Complete point (i.e.: when window.onload was fired)"
         ), 
       breakDown = 
         list(
           name = "breakDown", 
           key = "b", 
           api = "breakdown", 
           bool = TRUE, 
           info = "include the breakdown of requests and bytes by mime type"
         ), 
       domains = 
         list(
           name = "domains", 
           key = "D", 
           api = "domains", 
           bool = TRUE, 
           info = "include the breakdown of requests and bytes by domain"
         ), 
       pageSpeed = 
         list(
           name = "pageSpeed", 
           key = "p", 
           api = "pagespeed", 
           bool = TRUE, 
           info = "include the PageSpeed score in the response (may be slower)"
         ), 
       requests = 
         list(
           name = "requests", 
           key = "R", 
           api = "requests", 
           bool = TRUE, 
           info = "include the request data in the response (slower and results in much larger responses)"
         ), 
       medianMetric = 
         list(
           name = "medianMetric", 
           key = "m", 
           api = "medianMetric", 
           param = "metric", 
           info = "set the metric used to calculate median for multiple runs tests [loadTime]"
         ), 
       medianRun = 
         list(
           name = "medianRun", 
           api = "medianRun", 
           param = "metric", 
           info = "set the run used for median for multiple runs tests [median]"
         ), 
       specs = 
         list(
           name = "specs", 
           key = "S", 
           param = "json_or_file", 
           info = "set the specs for performance test suite"
         ), 
       reporter = 
         list(
           name = "reporter", 
           key = "r", 
           param = "name", 
           info = "set performance test suite reporter output: [dot]|spec|tap|xunit|list|progress|min|nyan|landing|json|doc|markdown|teamcity", 
           valid = list()
         ), 
       chartType = 
         list(
           name = "chartType", 
           api = "type", 
           key = "T", 
           param = "chart", 
           info = "set the chart type: waterfall or connection [waterfall]"
         ), 
       colorByMime = 
         list(
           name = "colorByMime", 
           api = "mime", 
           key = "M", 
           bool = TRUE, 
           info = "set chart coloring by MIME type [false]"
         ), 
       chartWidth = 
         list(
           name = "chartWidth", 
           api = "width", 
           key = "w", 
           param = "px", 
           info = "chart image width in px (300-2000) [930]"
         ), 
       maxTime = 
         list(
           name = "maxTime", 
           api = "max", 
           key = "m", 
           param = "seconds", 
           info = "set maximum time in seconds [automatic]"
         ), 
       requests = 
         list(
           name = "requests", 
           api = "requests", 
           key = "R", 
           param = "items", 
           info = "filter requests (e.g.:1,2,3,4-9,8) [all]"
         ), 
       noCPU = 
         list(
           name = "noCPU", 
           api = "cpu", 
           key = "C", 
           bool = TRUE, 
           invert = TRUE, 
           info = "hide CPU utilization [false]"
         ), 
       noBandwidth = 
         list(
           name = "noBandwidth", 
           api = "bw", 
           key = "b", 
           bool = TRUE, 
           invert = TRUE, 
           info = "hide bandwidth utilization [false]"
         ), 
       noEllipsis = 
         list(
           name = "noEllipsis", 
           api = "dots", 
           key = "i", 
           bool = TRUE, 
           invert = TRUE, 
           info = "hide ellipsis (...) for missing items [false]"
         ), 
       noLabels = 
         list(
           name = "noLabels", 
           api = "labels", 
           key = "l", 
           bool = TRUE, 
           invert = TRUE, 
           info = "hide labels for requests (URL) [false]"
         ), 
       key = 
         list(
           name = "key", 
           key = "k", 
           api = "k", 
           param = "api_key", 
           info = "API key (if assigned). Contact the WebPageTest server administrator for a key if required"
         ), 
       comparisonEndPoint = 
         list(
           name = "comparisonEndPoint", 
           key = "e", 
           api = "end", 
           param = "end_point", 
           info = "frame comparison end point: [visual]=visually complete | all=last change | doc=document complete | full=fully loaded", 
           valid = list()
         ), 
       request = 
         list(
           name = "request", 
           api = "request", 
           key = "R", 
           param = "number", 
           info = "the request number [1]"
         )
  )
checkArgs <- function(...){
  aNames <- as.character(as.list(substitute(list(...)))[-1L])
  caArgs <- setNames(list(...), aNames)
  argList <- 
    list(serverURL =  is_string,
         server = is_server,
         file = is_writeable_path_or_null,
         requestId = is_string_or_null,
         dryRun = is_logical,
         testId = is_string,
         days = is_integer,
         filter = is_string_or_null,
         breakDown = is_logical,
         domains = is_logical,
         pageSpeed = is_logical,
         requests = is_logical,
         medianMetric = is_string_or_null,
         medianRun = is_string_or_null,
         request = is_integer,
         run = is_integer_or_null,
         thumbnail = is_logical,
         repeatView = is_logical,
         dataURI = is_logical,
         chartType = is_string_or_null,
         colorByMime = is_logical,
         chartWidth = is_integer_or_null,
         maxTime = is_integer_or_null,
         wrequests = is_string_or_null,
         noCPU = is_logical,
         noBandwidth = is_logical,
         noEllipsis = is_logical,
         noLabels = is_logical,
         fullResolution = is_logical,
         startRender = is_logical,
         documentComplete = is_logical,
         urlOrScript = is_string,
         key = is_string_or_null,
         location = is_string,
         connectivity = is_string_or_null,
         runs = is_integer_or_null,
         firstViewOnly = is_logical,
         video = is_logical,
         private = is_logical,
         label = is_string_or_null,
         stopAtDocumentComplete = is_logical,
         disableJavaScript = is_logical,
         clearCerts = is_logical,
         ignoreSSL = is_logical,
         disableCompatibilityView = is_logical,
         tcpDump = is_logical,
         saveResponseBodies = is_logical,
         keepOriginalUserAgent = is_logical,
         domElement = is_string_or_null,
         minimumDuration = is_integer_or_null,
         tester = is_string_or_null,
         emulateMobile = is_logical,
         timeline = is_logical,
         timelineCallStack = is_integer_or_null, 
         chromeTrace = is_logical, 
         netLog = is_logical,
         dataReduction = is_logical,
         userAgent = is_string_or_null,
         commandLine = is_string_or_null,
         login = is_string_or_null,
         password = is_string_or_null,
         sensitive = is_logical, 
         disableHTTPHeaders = is_logical, 
         block = is_character_or_null,
         spof = is_character_or_null,
         customMetrics = is_string_or_null,
         authenticationType = is_integer_or_null,
         notifyEmail = is_string_or_null,
         pingback = is_string_or_null,
         bandwidthDown = is_integer_or_null,
         bandwidthUp = is_integer_or_null,
         latency = is_integer_or_null,
         packetLossRate = is_integer_or_null,
         disableOptimization = is_logical,
         disableScreenshot = is_logical,
         fullResolutionScreenshot = is_logical,
         jpegQuality = is_integer_or_null,
         medianVideo = is_logical,
         htmlBody = is_logical,
         tsView = is_string_or_null,
         tsViewConfigs = is_string_or_null,
         affinity = is_string_or_null,
         priority = is_integer_or_null,
         blockAds = is_logical,
         continuousVideoCapture = is_logical,
         forceSpdy3 = is_logical,
         forceSoftwareRendering = is_logical,
         tests = is_character,
         comparisonEndPoint = is_character_or_null
    )
  lapply(names(caArgs), function(x) {
    assert_that(argList[[x]](caArgs[[x]]))
  })
}

sendQuery <- function(url, path, body, origin, dryRun, 
                      method = "POST", ...){
  if(dryRun){return(modify_url(url, path = path, query = body))}
  WPTResponse <- 
    switch(method,
           POST = POST(url = url, body = body, path = path, ...),
           GET = GET(url = url, query = body, path = path, ...)
    )
  stop_for_status(WPTResponse, paste(origin, "returned response:", 
                                     WPTResponse[["status_code"]]))
  WPTResponse                 
}

false2Null <- function(x) if(x){as.integer(x)}else{NULL}
true2Null <- function(x) if(!x){as.integer(x)}else{NULL}
pasteOrNULL <- 
  function(x) if(is.null(x)){NULL}else{paste(x, collapse = " ")}

parseRequestData <- function(txt){
  dumRead <- readr::read_tsv(txt, col_names = FALSE)
  colNames <- 
    c('date', 'time', 'step', 'ip_addr', 'method', 'host', 'url', 
      'responseCode', 'load_ms',
      'ttfb_ms', 'load_start', 'bytesOut', 'bytesIn', 'objectSize', '', '',
      'expires', 'cacheControl', 'contentType', 'contentEncoding', 'type',
      'socket', '', '', '', '', '', '', '', '', '', '', '', '', '',
      'score_cache', 'score_cdn', 'score_gzip', 'score_cookies',
      'score_keep-alive', '', 'score_minify', 'score_combine', 
      'score_compress',
      'score_etags', '', 'is_secure', 'dns_ms', 'connect_ms', 'ssl_ms',
      'gzip_total', 'gzip_save', 'minify_total', 'minify_save', 
      'image_total',
      'image_save', 'cache_time', '', '', '', 'cdn_provider', 'dns_start',
      'dns_end', 'connect_start', 'connect_end', 'ssl_start', 'ssl_end',
      'initiator', 'initiator_line', 'initiator_column') 
  colNames <- c(colNames, rep("", dim(dumRead)[2] - length(colNames)))
  colNames[colNames == ""] <- 
    paste0("V", seq_along(colNames[colNames == ""]))
  readr::read_tsv(txt, col_names = colNames)
}
