


#' Create a dct:issued property in DCAT-AP CH standard
#'
#' @param date date or character vector in yyyy-mm-dd format
#' @param hour_minutes_seconds hour, minutes and seconds (default: "00:00:00")
#'
#' @examples
#' dct_issued(date = "2000-12-31", hour_minutes_seconds = "10:00:00")
#'
#' @export
dct_issued <- function(date = Sys.Date(),
                       hour_minutes_seconds = "00:00:00") {
  stopifnot(length(date) == 1L)
  stopifnot(length(hour_minutes_seconds) == 1L)

  paste0(
    "<dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">",
    date,
    "T", hour_minutes_seconds,
    "</dct:issued>"
  )
}

# <dct:issued rdf:datatype="http://www.w3.org/2001/XMLSchema#dateTime">2023-03-01T00:00:00</dct:issued>

