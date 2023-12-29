
# <dcat:keyword xml:lang="de">Hunde</dcat:keyword>
# <dcat:keyword xml:lang="de">statistics</dcat:keyword>
# <dcat:keyword xml:lang="fr">Chien</dcat:keyword>
# <dcat:keyword xml:lang="en">Dogs</dcat:keyword>
# <dcat:keyword xml:lang="it">Cani</dcat:keyword>



#' Create a dcat:keyword property in DCAT-AP CH standard
#'
#'
#' @param x keyword
#' @param language one of "de", "fr", "it" or "en"
#'
#' @examples
#' dcat_keyword()
#' dcat_keyword("Cani", language = "it")
#' dcat_keyword("Hunde", language = "de")
#'
#' @export
dcat_keyword <- function(x = "", language = c("de", "fr", "it", "en")) {
  language <- language[1]

  check_language(language = language)

  stopifnot(length(x) == 1L)

  paste0(
    "dcat:keyword xml:lang=", add_quotes(language), ">",
    x, "</dcat:keyword>"
  )
}

