

# <dcat:Catalog rdf:about="https://swisstopo/opendata/catalog">
#   <dcat:service>
#   <dcat:DataService rdf:about="https://swisstopo/data/123">
#   </dcat:DataService>
#   </dcat:service>
#
#   <dcat:service>
#   <dcat:DataService rdf:about="https://swisstopo/data/345">
#   </dcat:DataService>
#   </dcat:service>
# </dcat:Catalog>



#' Create a DCAT-AP CH DataService (dcat:DataService)
#'
#'
#' @param about url of the DataService
#' @param endpointURL enpointURL of the dataset, see dcat_endpointURL()
#' @param ... any other property to be included to a dcat:Dataset
#'
#'
#' @details
#' A dcat:DataService class, created with dcat_DataService(),
#' can/must have the following properties (M stands
#' for mandatory; R for recommended):
#' - dcat:endpointURL, M in V2: see [dcat_endpointURL()]
#' - dcat:contactPoint, M in V2: see [dcat_contactPoint()]
#' - dct:publisher, M in V2: see [dct_publisher()]
#' - dct:title, M in V2: see [dct_title()]
#' - dct:endpointDescription, R in V2: see [dcat_endpointDescription()]
#' - dct:license, R in V2: see [dct_license()] and/or [dct_license2()]
#' - dcat:servesDataset, R in V2: not yet implemented
#'
#'
#' @return A character vector of length greater than one.
#'
#'
#' @export
dcat_DataService <- function(about = "",
                             endpointURL = dcat_endpointURL(),
                             ...) {

  dots <- list(...)
  if (length(dots) == 0L) {
    dots <- NULL
  } else {
    # Convert to (character) vector
    dots <- unlist(dots)
  }

  c(
    paste0(
      "<dcat:DataService rdf:about=",
      add_quotes(about),
      ">"
    ),
    paste0("    ", endpointURL),
    if (!is.null(dots)) paste0("    ", dots) else dots,
    "</dcat:DataService>"
  )

}



