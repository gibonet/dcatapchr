


#' Create a dct:description property in DCAT-AP CH standard
#'
#'
#' @param description character string with a description
#' @param language language of the title (one of "it", "de", "fr", "en")
#'
#'
#' @export
dct_description <- function(description = "", language = "it") {
  language <- language[1]

  check_language(language = language)

  language <- add_quotes(language)

  paste0(
    "<dct:description xml:lang=",
    language,
    ">",
    description,
    "</dct:description>"
  )
}

# <dct:description xml:lang="de">Jagdreviere durch das Volkswirtschaftsdepartement für eine Dauer von acht Jahren verpachtet. Die Abgrenzung ist Bestandteil des Vertrages. Bei Jagdbanngebiete gibt es keine Jagdreviere.</dct:description>


