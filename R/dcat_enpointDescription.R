

# <dcat:endpointDescription rdf:resource="https://data.tg.ch/api/explore/v2.1/swagger.json" />


#' Create a dcat:endpointDescription property in DCAT-AP CH standard
#'
#' @param x a url
#'
#' @export
dcat_endpointDescription <- function(x = "") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:endpointDescription rdf:resource=",
    add_quotes(x),
    " />"
  )
}
