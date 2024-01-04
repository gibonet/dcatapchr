


#' Create a dcat:distribution/dcat:Distribution property
#'
#'
#' @param issued dct:issued property, see [dct_issued()].
#' @param access_url dcat:accessURL property, see [dcat_accessURL()].
#' @param rights dct:rights property, see [dct_rights()].
#' @param ... other arguments (not yet implemented)
#'
#' Mandatory in V1, recommended in V2 (for `dcat:Dataset`, [dcat_dataset])
#'
#' @export
dcat_distribution <- function(issued = dct_issued(),
                              access_url = dcat_accessURL(),
                              rights = dct_rights(),
                              ...) {

  c(
    "<dcat:distribution>",
    "  <dcat:Distribution>",
    paste0("    ", issued),
    paste0("    ", access_url),
    paste0("    ", rights),
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
