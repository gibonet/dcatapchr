

#' Create a dct:rights property in DCAT-AP CH standard
#'
#' @param license one of the licenses allowed in opendata.swiss
#'
#' See also https://dcat-ap.ch/vocabulary/licenses/20210623.html#terms_open for a
#' list of possible licenses.
#'
#' @examples
#' dct_rights(
#'   license = "NonCommercialAllowed-CommercialAllowed-ReferenceRequired"
#' )
#'
#' @export
dct_rights <- function(license = c(
  "NonCommercialAllowed-CommercialAllowed-ReferenceNotRequired",
  "NonCommercialAllowed-CommercialAllowed-ReferenceRequired",
  "NonCommercialAllowed-CommercialWithPermission-ReferenceNotRequired",
  "NonCommercialAllowed-CommercialWithPermission-ReferenceRequired"
)) {
  license <- license[1]

  paste0(
    "<dct:rights>", license, "</dct:rights>"
  )
}

# <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>
