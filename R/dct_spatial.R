
# <dct:spatial rdf:resource="http://publications.europa.eu/mdr/authority/country/ZWE"/>
# <dct:spatial>Bern</dct:spatial>


#' Create a dct:spatial property in DCAT-AP CH standard
#'
#' @param x spatial reference (default: "Switzerland")
#'
#' @examples
#' dct_spatial(x = "Switzerland")
#'
#' @export
dct_spatial <- function(x = "Switzerland") {
  x <- x[1]

  paste0(
    "<dct:spatial>", x, "</dct:spatial>"
  )
}
