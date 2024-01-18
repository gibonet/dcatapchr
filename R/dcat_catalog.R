


#' Create a DCAT-AP CH Catalog (dcat:Catalog)
#'
#'
#' @param catalog_endpoint URL/URI of the catalog endpoint
#' @param datasets character vector with one or more dcat:dataset(s), see
#'  [dcat_dataset()]
#' @param ... any other property to be included to a dcat:Catalog
#'
#'
#' @details
#' A dcat:Catalog class, created with dcat_catalog(),
#' can/must have the following properties (M stands
#' for mandatory; R for recommended):
#' - dcat:dataset, M in V1, R in V2: see [dcat_dataset()]
#' - dct:description, M in V2: see [dct_description()]
#' - dct:publisher, M in V2: see [dct_publisher()]
#' - dct:title, M in V2: see [dct_title()]
#' - foaf:homepage, R in V2: see [foaf_homepage()]
#' - dct:language, R in V2: see [dct_language()]
#' - dct:license, R in V2: see [dct_license()]
#' - dct:issued, R in V2: see [dct_issued()]
#' - dct:rights, R in V2: see [dct_rights()]
#' - dct:spatial, R in V2: see [dct_spatial()]
#' - dcat:themeTaxonomy, R in V2: see [dcat_themeTaxonomy()]
#' - dct:modified, R in V2: see [dct_modified()]
#' - dcat:service, R in V2: see [dcat_service()]
#'
#' @return A character vector of length greater than one,
#'     where each element is a line of the catalog in rdf
#'     format. The catalog can be exported in a file with
#'     unix file endings and UTF-8 encoding with
#'     [write_unix()].
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


