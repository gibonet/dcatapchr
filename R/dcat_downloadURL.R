

#' Create a dcat:downloadURL property in DCAT-AP CH standard
#'
#'
#' @param download_url url of the resource
#'
#'
#'
#' Property of `dcat:Distribution` ([dcat_distribution()])
#'
#'
#' @export
dcat_downloadURL <- function(download_url = "https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip") {
  stopifnot(length(download_url) == 1L)

  paste0(
    "<dcat:downloadURL rdf:resource=", add_quotes(download_url), " />"
  )
}
