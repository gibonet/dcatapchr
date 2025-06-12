


#' Adds quotes to a character string
#'
#' @param x a character string (or vector)
#'
#' @example inst/examples/ex-add_quotes.R
#'
#' @export
add_quotes <- function(x) {
  paste0("\"", x, "\"")
}
