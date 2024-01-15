


#' Create a DCAT-AP CH Catalog (dcat:Catalog)
#'
#'
#' @param catalog_endpoint URL/URI of the catalog endpoint
#' @param datasets character vector with one or more dcat:dataset(s), see
#'  [dcat_dataset()]
#' @param ... any other property to be included to a dcat:Catalog
#'
#'
#' @examples
#' dcat_catalog()
#' dcat_catalog(catalog_endpoint = "")
#'
#'
#' # Add some properties (...)
#' dcat_catalog(
#'   title = dct_title("Catalogo Ustat", language = "it"),
#'   description = dct_description("Descrizione catalogo", language = "it")
#' )
#'
#' @export
dcat_catalog <- function(catalog_endpoint = "https://swisstopo/catalog-endpoint.rdf",
                         datasets = '<dcat:dataset rdf:resource="https://swisstopo/123"/>',
                         ...) {

  dots <- list(...)
  if (length(dots) == 0L) {
    dots <- NULL
  } else {
    # Convert to (character) vector
    dots <- unlist(dots)
  }

  # First part
  f1 <- rdf_namespaces()

  if (is.null(catalog_endpoint) || is.na(catalog_endpoint) ||
      catalog_endpoint == "") {
    l4 <- '  <dcat:Catalog>'
  } else {
    l4 <- paste0(
      '  <dcat:Catalog rdf:about="', catalog_endpoint, '">'
    )
  }

  c(
    f1,
    l4,
    if (!is.null(dots)) paste0("    ", dots) else dots,
    paste0("    ", datasets),
    '  </dcat:Catalog>',
    '</rdf:RDF>'
  )
}


