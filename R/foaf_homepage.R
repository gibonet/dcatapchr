
# <foaf:homepage rdf:resource="http://www.example.com/" />

#' Create a foaf:homepage tag
#'
#' @param x an url of a homepage
#'
#' @examples
#' foaf_homepage(x = "http://www.example.com")
#'
#' @export
foaf_homepage <- function(x = "http://www.example.com") {
  stopifnot(length(x) == 1L)

  paste0(
    "<foaf:homepage rdf:resource=",
    add_quotes(x),
    " />"
  )
}
