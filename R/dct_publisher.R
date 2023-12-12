


#' Create a dct:publisher property in DCAT-AP CH standard
#'
#'
#' @param publisher character string with a publisher (usually an URL)
#' @param foaf_name name of the organization/publisher
#'
#'
#' @export
dct_publisher <- function(publisher = "https://www.ti.ch/ustat",
                          foaf_name = "Ufficio di statistica del Cantone Ticino (Ustat)") {

  publisher <- add_quotes(publisher)

  c(
    "<dct:publisher>",
    paste0("  <foaf:Organization rdf:about=", publisher, "/>"),
    paste0("    <foaf:name>", foaf_name, "</foaf:name:>"),
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
