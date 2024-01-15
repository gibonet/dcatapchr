

#' Prepare a dataset to be exported in rdf/xml
#'
#'
#' @param dataset a dataset created with [dcat_dataset()]
#' @param namespaces character vector with xml/rdf namespaces
#'
#'
#' @export
rdf_dataset <- function(dataset = dcat_dataset(), namespaces = c(
  'xmlns:foaf="http://xmlns.com/foaf/0.1/"',
  'xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"',
  'xmlns:hydra="http://www.w3.org/ns/hydra/core#"',
  'xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"',
  'xmlns:dcat="http://www.w3.org/ns/dcat#"',
  'xmlns:dct="http://purl.org/dc/terms/"',
  'xmlns:vcard="http://www.w3.org/2006/vcard/ns#"',
  'xmlns:xsd="http://www.w3.org/2001/XMLSchema#"',
  'xmlns:schema="http://schema.org/"'
)) {
  # Eliminate dcat:dataset tags
  k <- grep("dcat:dataset", dataset, fixed = TRUE)
  c(
    rdf_namespaces(),
    dataset[-k],
    "</rdf:RDF>"
  )
}


