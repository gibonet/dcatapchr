


#' Indent a character vector by some spaces
#'
#'
#' @param x a character vector
#' @param nspaces number of desired spaces to indent (default: 2)
#'
#' @noRd
#'
indent <- function(x, nspaces = 2L) {
  # first implementation
  # s <- character(length = nspaces + 1L)
  # s <- paste(s, collapse = " ")

  # second implementation, with strrep
  s <- strrep(" ", times = nspaces)

  paste0(s, x)
}

