
# <dcat:endpointURL rdf:resource="https://data.tg.ch/api/explore/v2.1/" />

#' Create a dcat:endpointURL property in DCAT-AP CH standard
#'
#' @param x a url
#'
#' @export
dcat_endpointURL <- function(x = "") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:endpointURL rdf:resource=",
    add_quotes(x),
    " />"
  )
}
