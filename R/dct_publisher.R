


#' Create a dct:publisher property in DCAT-AP CH standard
#'
#'
#' @description
#' `dct_publisher()` is modeled as a foaf:Organization,
#' `dct_publisher2()` is modelled as a foaf:Agent in accordance with
#' DCAT-AP CH v2. `dct_publisher2()` allows the specification of the
#' foaf:name in more languages.
#'
#' @param publisher character string with a publisher (usually an URL)
#' @param foaf_name name of the organization/publisher
#'
#' @examples
#' dct_publisher(
#'   publisher = "https://www.ti.ch/ustat",
#'   foaf_name = "Ufficio di statistica del Cantone Ticino (Ustat)"
#' )
#'
#' @export
dct_publisher <- function(
  publisher = "https://www.ti.ch/ustat",
  foaf_name = "Ufficio di statistica del Cantone Ticino (Ustat)"
) {

  stopifnot(length(publisher) == 1L)
  stopifnot(length(foaf_name) == 1L)

  publisher <- add_quotes(publisher)

  c(
    "<dct:publisher>",
    paste0("  <foaf:Organization rdf:about=", publisher, ">"),
    paste0("    <foaf:name>", foaf_name, "</foaf:name>"),
    "  </foaf:Organization>",
    "</dct:publisher>"
  )
}

# <dct:publisher rdf:resource="https://www.ur.ch/departemente/58"/>

# <dct:publisher>
#   <foaf:Organization rdf:about="https://swisstopo">
#     <foaf:name>Landesamt für Topographie Swisstopo</foaf:name:>
#   </foaf:Organization>
# </dct:publisher>

# <dct:publisher>
#   <foaf:Agent rdf:about="https://swisstopo.ch">
#     <foaf:name xml:lang="de">Bundesamt für Landestopografie swisstopo</foaf:name>
#     <foaf:name xml:lang="fr">Office fédéral de topographie swisstopo</foaf:name>
#     <foaf:name xml:lang="it">Ufficio federale di topografia swisstopo</foaf:name>
#     <foaf:name xml:lang="en">Federal Office of Topography swisstopo</foaf:name>
#   </foaf:Agent>
# </dct:publisher>


#' @rdname dct_publisher
#'
#' @param language language of foaf:name. Can be one or more of "de", "fr",
#'     "it" or "en". Must have the same length as foaf_name.
#'
#' @examples
#' dct_publisher2(
#'   publisher = "https://www.ti.ch/ustat",
#'   foaf_name = "Ufficio di statistica del Cantone Ticino (Ustat)",
#'   language = "it"
#' )
#'
#' @export
dct_publisher2 <- function(
  publisher = "https://www.ti.ch/ustat",
  foaf_name = "Ufficio di statistica del Cantone Ticino (Ustat)",
  language = "it"
) {
  stopifnot(length(publisher) == 1L)
  stopifnot(length(foaf_name) == length(language))
  stopifnot(length(foaf_name) <= 4L)

  publisher <- add_quotes(publisher)
  language <- add_quotes(language)

  c(
    "<dct:publisher>",
    paste0("  <foaf:Agent rdf:about=", publisher, ">"),
    paste0(
      "    <foaf:name xml:lang=", language, ">",
      foaf_name, "</foaf:name>"
    ),
    "  </foaf:Agent>",
    "</dct:publisher>"
  )
}
