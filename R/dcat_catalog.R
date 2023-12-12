


#' Create a DCAT-AP CH Catalog (dcat:Catalog)
#'
#'
#' @param catalog_endpoint URL/URI of the catalog endpoint
#' @param datasets character vector with one or more dcat:dataset(s)
#'
#' @export
dcat_catalog <- function(catalog_endpoint = "https://swisstopo/catalog-endpoint.rdf",
                         datasets = '<dcat:dataset rdf:resource="https://swisstopo/123"/>') {
  # First part
  l1 <- '<?xml version="1.0" encoding="utf-8" ?>'
  l2 <- '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"'
  l3 <- '         xmlns:dcat="http://www.w3.org/ns/dcat#">'
  f1 <- c(l1, l2, l3)

  l4 <- paste0(
    '  <dcat:Catalog rdf:about="', catalog_endpoint, '">'
  )

  c(
    f1,
    l4,
    datasets,
    '  </dcat:Catalog>',
    '</rdf:RDF>'
  )
}


