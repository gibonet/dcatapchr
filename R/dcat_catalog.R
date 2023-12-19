


#' Create a DCAT-AP CH Catalog (dcat:Catalog)
#'
#'
#' @param catalog_endpoint URL/URI of the catalog endpoint
#' @param datasets character vector with one or more dcat:dataset(s), see [dcat_dataset()]
#'
#' @export
dcat_catalog <- function(catalog_endpoint = "https://swisstopo/catalog-endpoint.rdf",
                         datasets = '<dcat:dataset rdf:resource="https://swisstopo/123"/>') {
  # First part
  l1 <- '<?xml version="1.0" encoding="utf-8" ?>'
  l2 <- '<rdf:RDF '
  l3 <- '  xmlns:foaf="http://xmlns.com/foaf/0.1/"'
  l4 <- '  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"'
  l5 <- '  xmlns:hydra="http://www.w3.org/ns/hydra/core#"'
  l6 <- '  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"'
  l7 <- '  xmlns:dcat="http://www.w3.org/ns/dcat#"'
  l8 <- '  xmlns:dct="http://purl.org/dc/terms/"'
  l9 <- '  xmlns:vcard="http://www.w3.org/2006/vcard/ns#"'
  l10 <- '  xmlns:xsd="http://www.w3.org/2001/XMLSchema#"'
  l11 <- '  xmlns:schema="http://schema.org/"'
  l_end <- '>'
  f1 <- c(l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l_end)

  l4 <- paste0(
    '  <dcat:Catalog rdf:about="', catalog_endpoint, '">'
  )

  c(
    f1,
    l4,
    paste0("    ", datasets),
    '  </dcat:Catalog>',
    '</rdf:RDF>'
  )
}


