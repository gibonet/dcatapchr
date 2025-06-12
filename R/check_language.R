


#' Check language validity ("de", "fr", "it", "en")
#'
#' @param language one of "de", "fr", "it" or "en"
#'
#' @noRd
check_language <- function(language) {
  language <- language[1]

  if (!(language %in% c("de", "fr", "it", "en"))) {
    stop("Language must be one of de, fr, it or en")
  }
}
