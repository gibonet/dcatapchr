
# <dcat:theme rdf:resource="http://publications.europa.eu/resource/authority/data-theme/REGI"/>
# <dcat:theme rdf:resource="http://publications.europa.eu/resource/authority/data-theme/ENVI"/>


#' Create a dcat:theme property in DCAT-AP CH standard
#'
#' @param x a theme url
#'
#'
dcat_theme <- function(x = "http://dcat-ap.ch/vocabulary/themes/work") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:theme rdf:resource=", add_quotes(x), "/>"
  )
}
