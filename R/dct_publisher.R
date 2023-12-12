


#' Create a dct:publisher property in DCAT-AP CH standard
#'
#'
#' @param publisher character string with a publisher (usually an URL)
#'
#'
#' @export
dct_publisher <- function(publisher = "https://www.ti.ch/ustat") {

  publisher <- add_quotes(publisher)

  paste0(
    "<dct:publisher rdf:resource=",
    publisher,
    "/>"
  )
}

# <dct:publisher rdf:resource="https://www.ur.ch/departemente/58"/>

