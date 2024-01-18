

# <dcat:service>
#   <dcat:DataService rdf:about="https://swisstopo/data/123">
#   </dcat:DataService>
# </dcat:service>


#' Create a dcat:service property in DCAT-AP CH standard
#'
#' @param x things to include in a dcat:service, typically one or more dcat:DataService
#'
#' @export
dcat_service <- function(x = "") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:service>",
    x,
    "</dcat:service>"
  )
}

