

# <dct:format rdf:resource="http://publications.europa.eu/resource/authority/file-type/CSV"/>

#' Create a dct:format property in DCAT-AP CH standard
#'
#'
#' @param x a filetype resource url/uri. See https://publications.europa.eu/resource/authority/file-type
#'
#'
#' @export
dct_format <- function(x = "http://publications.europa.eu/resource/authority/file-type/CSV") {
  stopifnot(length(x) == 1L)

  paste0(
    "<dct:format rdf:resource=", add_quotes(x), "/>"
  )
}





