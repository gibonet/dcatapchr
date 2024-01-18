

#' Create a DCAT-AP CH Dataset (dcat:dataset)
#'
#' A dcat:dataset must have one or more dcat:distribution(s).
#'
#' @param title title of the dataset, see [dct_title()]. Can be multilingual.
#' @param description description of the dataset, see [dct_description()]. Can be multilingual.
#' @param publisher publisher of the dataset, see [dct_publisher()].
#' @param contactPoint contactPoint of the dataset, see [dcat_contactPoint()].
#' @param identifier identifier of the dataset, see [dct_identifier()].
#' @param distribution one or more distributions, see [dcat_distribution()]
#' @param ... any other property to be included to a dcat:Dataset
#'
#'
#' @details
#' A dcat:Dataset class, created with dcat_dataset(),
#' can/must have the following properties (M stands
#' for mandatory; R for recommended):
#' - dcat:contactPoint, M in V1 and V2: see [dcat_contactPoint()]
#' - dct:description, M in V1 and V2: see [dct_description()]
#' - dct:identifier, M in V1 and V2: see [dct_identifier()]
#' - dct:publisher, M in V1 and V2: see [dct_publisher()]
#' - dct:title, M in V1 and V2: see [dct_title()]
#' - dcat:distribution, M in V1, R in V2: see [dcat_distribution()]
#' - dcat:keyword, R in V2: see [dcat_keyword()]
#' - dcat:landingPage, R in V2: see [dcat_landingPage()]
#' - dct:issued, R in V2: see [dct_issued()]
#' - dct:spatial, R in V2: see [dct_spatial()]
#' - dct:temporal, R in V2: see [dct_temporal()]
#' - dcat:theme, R in V2: see [dcat_theme()]
#' - dct:modified, R in V2: see [dct_modified()]
#'
#'
#' @return A character vector of length greater than one.
#'
#'
#' @export
dcat_dataset <- function(title = dct_title(),
                         description = dct_description(),
                         publisher = dct_publisher(),
                         contactPoint = dcat_contactPoint(),
                         identifier = dct_identifier(),
                         distribution = dcat_distribution(),
                         ...) {

  dots <- list(...)
  if (length(dots) == 0L) {
    dots <- NULL
  } else {
    # Convert to (character) vector
    dots <- unlist(dots)
  }

  c(
    "<dcat:dataset>",
    "  <dcat:Dataset>",
    paste0("    ", title),
    paste0("    ", description),
    paste0("    ", publisher),
    paste0("    ", contactPoint),
    paste0("    ", identifier),
    paste0("    ", distribution),
    if (!is.null(dots)) paste0("    ", dots) else dots,
    "  </dcat:Dataset>",
    "</dcat:dataset>"
  )

}

# See this example:
# https://www.web.statistik.zh.ch/ogd/harvester/handelsregisteramt-kanton-zuerich.xml


