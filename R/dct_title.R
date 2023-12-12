


#' Create a dct:title property in DCAT-AP CH standard
#'
#'
#' @param title character string with a title
#' @param language language of the title (one of "it", "de", "fr", "en")
#'
#'
#' @export
dct_title <- function(title = "", language = "it") {
  stopifnot(length(language) == 1L)
  stopifnot(language %in% c("it", "de", "fr", "en"))

  language <- add_quotes(language)

  paste0(
    "<dct:title xml:lang=",
    language,
    ">",
    title,
    "</dct:title>"
  )
}

# <dct:title xml:lang="de">Jagdreviere und Jagdbanngebiete</dct:title>
