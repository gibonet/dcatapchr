



#' Create a dct:identifier property in DCAT-AP CH standard
#'
#' @param identifier character string with and identifier
#'
#' @examples
#' dct_identifier(identifier = "ti-ustat-cubi_pol_01@ustat")
#'
#' @export
dct_identifier <- function(identifier = "xyz456@cantone_ticino") {
  stopifnot(length(identifier) == 1L)

  paste0(
    "<dct:identifier>",
    identifier,
    "</dct:identifier>"
  )
}


# <dct:identifier>208b16ae-293b-4b74-8ecd-41998529121d@kanton_solothurn</dct:identifier>

