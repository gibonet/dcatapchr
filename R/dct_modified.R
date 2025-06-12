

# <dct:modified rdf:datatype="http://www.w3.org/2001/XMLSchema#dateTime">2013-04-26T01:00:00Z</dct:modified>
# <dct:modified rdf:datatype="http://www.w3.org/2001/XMLSchema#dateTime">2023-10-24T10:19:36+01:00</dct:modified>


#' Create a dct:modified property in DCAT-AP CH standard
#'
#' @param date date or character vector in yyyy-mm-dd format
#' @param hour_minutes_seconds hour, minutes and seconds (default: "00:00:00")
#'
#' @examples
#' dct_modified(date = "2001-12-31", hour_minutes_seconds = "10:00:00")
#'
#' @export
dct_modified <- function(date = Sys.Date(),
                       hour_minutes_seconds = "00:00:00") {
  stopifnot(length(date) == 1L)
  stopifnot(length(hour_minutes_seconds) == 1L)

  paste0(
    "<dct:modified rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">",
    date,
    "T", hour_minutes_seconds,
    "</dct:modified>"
  )
}




