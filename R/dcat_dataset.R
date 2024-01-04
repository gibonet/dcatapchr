

#' Create a DCAT-AP CH Catalog (dcat:dataset)
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


