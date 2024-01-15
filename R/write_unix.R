

#' Write a character vector to a file with unix file endings and UTF-8 encoding
#'
#' @param x a character vector
#' @param filename filename
#'
#'
#' @export
write_unix <- function(x, filename) {
  f <- file(filename, "wb")
  writeLines(x, con = f, useBytes = TRUE)
  close(f)
}


