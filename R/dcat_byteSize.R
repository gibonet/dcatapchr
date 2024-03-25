
# <dcat:byteSize rdf:datatype="http://www.w3.org/2001/XMLSchema#integer">3067381</dcat:byteSize>


#' Create a dcat:byteSize property in DCAT-AP CH standard
#'
#'
#' @param size size of the resource (in bytes)
#'
#'
#'
#' Property of `dcat:Distribution` ([dcat_distribution()])
#'
#'
#' @export
dcat_byteSize <- function(size = 0) {
  stopifnot(length(size) == 1L)

  paste0(
    "dcat:byteSize rdf:datatype=",
    add_quotes("http://www.w3.org/2001/XMLSchema#integer"),
    ">",
    size,
    "</dcat:byteSize>"
  )
}
