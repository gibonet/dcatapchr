

# <dct:temporal>
#   <dct:PeriodOfTime>
#     <schema:startDate rdf:datatype="http://www.w3.org/2001/XMLSchema#date">1990-12-31</schema:startDate>
#     <schema:endDate rdf:datatype="http://www.w3.org/2001/XMLSchema#date">2022-12-31</schema:endDate>
#   </dct:PeriodOfTime>
# </dct:temporal>


#' Create a dct:temporal property in DCAT-AP CH standard
#'
#' @param startDate start date (default: Sys.Date() - 1). Date in yyyy-mm-dd format
#' @param endDate end date (default: Sys.Date()). Date in yyyy-mm-dd format
#'
#'
#'
#' @export
dct_temporal <- function(startDate = Sys.Date() - 1, endDate = Sys.Date()) {
  stopifnot(length(startDate) == 1L)
  stopifnot(length(endDate) == 1L)

  stopifnot(startDate <= endDate)

  rdf_datatype <- "http://www.w3.org/2001/XMLSchema#date"
  rdf_datatype <- paste0(
    "rdf:datatype=", add_quotes(rdf_datatype)
  )

  c(
    "<dct:temporal>",
    "  <dct:PeriodOfTime>",
    # startDate row
    paste0(
      "    <schema:startDate ", rdf_datatype, ">", startDate, "</schema:startDate>"
    ),
    # endDate row
    paste0(
      "    <schema:endDate ", rdf_datatype, ">", endDate, "</schema:endDate>"
    ),
    "  </dct:PeriodOfTime>",
    "</dct:temporal>"
  )
}


