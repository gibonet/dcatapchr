
# <dcat:Catalog rdf:about="https://swisstopo/opendata/catalog">
#   <dcat:themeTaxonomy rdf:resource="http://publications.europa.eu/resource/authority/data-theme"/>
# </dcat:Catalog>


#' Create a dcat:themeTaxonomy property in DCAT-AP CH standard
#'
#' @param x an url
#'
#' @export
dcat_themeTaxonomy <- function(x = "http://publications.europa.eu/resource/authority/data-theme") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:themeTaxonomy rdf:resource=",
    add_quotes(x),
    "/>"
  )
}

