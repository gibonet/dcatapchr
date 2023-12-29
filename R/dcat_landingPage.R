

# <dcat:landingPage rdf:resource="http://www.bafu.admin.ch/laerm/index.html"/>
# <dcat:landingPage rdf:resource="https://www.zh.ch/de/politik-staat/gemeinden/gemeindeportraet.html"/>


#' Create a dcat:landingPage property in DCAT-AP CH standard
#'
#' @param x an url (character string). Default: https://www.example.com
#'
#'
#' @examples
#' dcat_landingPage()
#'
#' @export
dcat_landingPage <- function(x = "https://www.example.com") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:landingPage rdf:resource=",
    add_quotes(x),
    "/>"
  )
}
