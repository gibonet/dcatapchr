
#' Create a dcat:mediaType property in DCAT-AP CH standard
#'
#' @description
#' Property of `dcat:Distribution` ([dcat_distribution()]).
#' See also https://handbook.opendata.swiss/fr/content/glossar/bibliothek/dcat-ap-ch.html#dcat-distribution-media-type
#'
#' @param media_type a MIME type of [IANA-MEDIA-TYPES](http://www.iana.org/assignments/media-types/media-types.xhtml). Example: "https://www.iana.org/assignments/media-types/text/csv"
#'
#' @export
dcat_mediaType <- function(
  media_type = "https://www.iana.org/assignments/media-types/text/csv"
) {
  stopifnot(length(media_type) == 1L)

  paste0(
    "<dcat:mediaType rdf:resource=", add_quotes(media_type), " />"
  )
}

# https://handbook.opendata.swiss/fr/content/glossar/bibliothek/dcat-ap-ch.html#dcat-distribution-media-type
# <dcat:mediaType rdf:resource="http://www.iana.org/assignments/media-types/text/html"/>

# <dcat:Distribution rdf:about="https://swisstopo/123">
#   <dcat:downloadURL rdf:resource="http:swisstopo/file/1234/ld+json"/>
#   <dcat:mediaType rdf:resource="https://www.iana.org/assignments/media-types/application/ld+json"/>
# </dcat:Distribution>

