

# <dcat:Distribution rdf:about="https://swisstopo/opendata/123">
#   <dcat:accessService>
#     <dcat:DataService rdf:about="https://swisstopo/data/123">
#     </dcat:DataService>
#   </dcat:accessService>
# </dcat:Distribution>

#' Create a dcat:accessService property in DCAT-AP CH standard
#'
#' @param x things to include in a dcat:accessService,
#'     typically one or more dcat:DataService
#'
#' @export
dcat_accessService <- function(x = dcat_DataService()) {
  c(
    "<dcat:accessService>",
    x,
    "</dcat:accessService>"
  )
}


