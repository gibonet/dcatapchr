

#' Create a character vector with some xml/rdf namespaces
#'
#'
#' @param namespaces character vector with xml/rdf namespaces
#' @param nspaces number of spaces to indent (default: 2)
#'
#'
#'
#' @export
rdf_namespaces <- function(namespaces = c(
  'xmlns:foaf="http://xmlns.com/foaf/0.1/"',
  'xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"',
  'xmlns:hydra="http://www.w3.org/ns/hydra/core#"',
  'xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"',
  'xmlns:dcat="http://www.w3.org/ns/dcat#"',
  'xmlns:dct="http://purl.org/dc/terms/"',
  'xmlns:vcard="http://www.w3.org/2006/vcard/ns#"',
  'xmlns:xsd="http://www.w3.org/2001/XMLSchema#"',
  'xmlns:schema="http://schema.org/"'
  ), nspaces = 2L
) {
  c(
    '<?xml version="1.0" encoding="utf-8" ?>',
    '<rdf:RDF ',
    indent(namespaces, nspaces = nspaces),
    '>'
  )
}
