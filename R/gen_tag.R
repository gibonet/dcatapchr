


#' Generate a tag like <tag>...</tag>
#'
#' @param tag character string with the desired tag
#' @param x the content to be encapsulated inside the tag
#'
#' @examples
#' gen_tag(tag = "dct:identifier", x = "ti-ustat-cubi_pol_01@ustat")
#'
#'
#' @export
gen_tag <- function(tag = "dct:identifier", x = "...") {
  stopifnot(length(tag) == 1L)

  paste0(
    "<", tag, ">",
    x,
    "</", tag, ">"
  )
}


#' Generate a tag like <tag rdf:resource="..." />
#'
#'
#' @param tag character string with the desired tag
#' @param x the content to be encapsulated inside the tag. Note that this
#'     content is enclosed in quotation marks (by the function)
#' @param rdf_resource character string that comes afer the tag (default: "rdf:resource")
#'
#' @examples
#' gen_tag2(
#'   tag = "dcat:accessURL",
#'   x = "https://example.com",
#'   rdf_resource = "rdf:resource"
#' )
#'
#' @export
gen_tag2 <- function(tag = "dcat:accessURL", x = "https://example.com", rdf_resource = "rdf:resource") {
  stopifnot(length(tag) == 1L)

  paste0(
    "<", tag, " ", rdf_resource, "=", add_quotes(x), " />"
  )
}

# <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip\" />
