

#' Create a dcat:downloadURL property in DCAT-AP CH standard
#'
#'
#' @param access_url url of the resource
#'
#'
#'
#' Mandatory property of `dcat:Distribution` ([dcat_distribution()])
#'
#'
#' @export
dcat_downloadURL <- function(access_url = "https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip") {
  stopifnot(length(access_url) == 1L)

  paste0(
    "<dcat:downloadURL rdf:resource=", add_quotes(access_url), " />"
  )
}
