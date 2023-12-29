

# <dct:license rdf:about="http://dcat-ap.ch/vocabulary/licenses/terms_by">
#   <rdf:type rdf:resource="http://purl.org/dc/terms/RightsStatement"/>
# </dct:license>


# See https://www.dcat-ap.ch/vocabulary/licenses/20210623.html


#' Create a dct:license property in DCAT-AP CH standard
#'
#'
#' @param about a dct:license uri. See https://www.dcat-ap.ch/vocabulary/licenses/20210623.html
#'
#' @export
dct_license <- function(about = "http://dcat-ap.ch/vocabulary/licenses/terms_open") {
  stopifnot(length(about) == 1L)

  c(
    paste0(
      "<dct:license rdf:about=", add_quotes(about), ">"
    ),
    "  <rdf:type rdf:resource=\"http://purl.org/dc/terms/RightsStatement\"/>",
    "</dct:license>"
  )
}
