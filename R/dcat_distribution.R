


#' Create a dcat:distribution/dcat:Distribution property
#'
#'
#' @param issued dct:issued property, see [dct_issued()].
#' @param access_url dcat:accessURL property, see [dcat_accessURL()].
#' @param license dct:license property, see [dct_license()].
#' @param ... any other property to be included to a dcat:Distribution
#'
#' Mandatory in V1, recommended in V2 (for `dcat:Dataset`, [dcat_dataset()])
#'
#' @seealso [dct_description()], [dct_title()], [dct_modified()], [dct_format()], [dct_rights()]
#'
#' @examples
#' dcat_distribution()
#'
#' dcat_distribution(description = dct_description("Un archivio zip con un csv"))
#'
#' @export
dcat_distribution <- function(issued = dct_issued(),
                              access_url = dcat_accessURL(),
                              license = dct_license2(),
                              ...) {

  dots <- list(...)
  if (length(dots) == 0L) {
    dots <- NULL
  } else {
    # Convert to (character) vector
    dots <- unlist(dots)
  }

  c(
    "<dcat:distribution>",
    "  <dcat:Distribution>",
    paste0("    ", issued),
    paste0("    ", access_url),
    paste0("    ", license),
    if (!is.null(dots)) paste0("    ", dots) else dots,
    "  </dcat:Distribution>",
    "</dcat:distribution>"
  )

}

# issued, dct:issued, mandatory
# access url, dcat:accessURL, mandatory
# rights, dct:rights, mandatory

# <dcat:distribution rdf:resource="https://ckan.opendata.swiss/dataset/0c6f6843-244a-4f0c-ab3c-fffd01db3ffb/resource/e49462d9-6e17-4449-a274-2d73968258e0"/>


# See this example:
# https://www.web.statistik.zh.ch/ogd/harvester/handelsregisteramt-kanton-zuerich.xml
