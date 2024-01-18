

# <dcat:servesDataset rdf:resource="https://data.tg.ch/explore/dataset/dek-gs-4/" />


#' Create a dcat:servesDataset property in DCAT-AP CH standard
#'
#' @param x a url
#'
#'
#' @examples
#' dcat_servesDataset("https://example.com")
#'
#' @export
dcat_servesDataset <- function(x = "https://example.com") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dcat:servesDataset rdf:resource=",
    add_quotes(x),
    " />"
  )
}

