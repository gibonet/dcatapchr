

# <dct:language>de</dct:language>

#' Create a dct:language property in DCAT-AP CH standard
#'
#' @param language two-letters abbreviation of the language (one of "de", "fr", "it" or "en")
#'
#' @export
dct_language <- function(language = c("de", "fr", "it", "en")) {
  language <- language[1]

  check_language(language = language)

  paste0(
    "<dct:language>", language, "</dct:language>"
  )
}
