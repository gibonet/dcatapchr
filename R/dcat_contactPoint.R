


#' Create a dcat:contactPoint property in DCAT-AP CH standard
#'
#' @param nodeID organization id (character string)
#' @param email email address
#' @param fn name of the organization
#'
#'
#'
#' Mandatory property of `dcat:Dataset` ([dcat_dataset()])
#'
#' @export
dcat_contactPoint <- function(nodeID = paste(sample(letters), collapse = ""),
                              email = "dfe-ustat@ti.ch",
                              fn = "Ufficio di statistica del Canton Ticino (Ustat)") {

  stopifnot(length(nodeID) == 1L)
  stopifnot(length(email) == 1L)

  c(
    "<dcat:contactPoint>",
    paste0("  <vcard:Organization rdf:nodeID=", add_quotes(nodeID), ">"),
    paste0("    <vcard:hasEmail rdf:resource=", add_quotes(paste0("mailto:", email)), "/>"),
    paste0("    <vcard:fn>", fn, "</vcard:fn>"),
    "  </vcard:Organization>",
    "</dcat:contactPoint>"
  )
}


# <dcat:contactPoint>
#   <vcard:Organization rdf:nodeID="Nb5448520ee3b44238b800a99424fbfb8">
#     <vcard:hasEmail rdf:resource="mailto:awjf@vd.so.ch"/>
#     <vcard:fn>awjf@vd.so.ch</vcard:fn>
#   </vcard:Organization>
# </dcat:contactPoint>


