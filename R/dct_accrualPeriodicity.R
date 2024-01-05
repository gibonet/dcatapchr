

# <dct:accrualPeriodicity rdf:resource="http://publications.europa.eu/resource/authority/frequency/DAILY"/>


#' Create a dct:accrualPeriodicity property in DCAT-AP CH standard
#'
#'
#' @param freq frequency with which a dataset is updated (see [https://publications.europa.eu/resource/authority/frequency](https://publications.europa.eu/resource/authority/frequency))
#'
#'
dct_accrualPeriodicity <- function(freq = c("https://publications.europa.eu/resource/authority/frequency/ANNUAL",
                                         "https://publications.europa.eu/resource/authority/frequency/QUARTERLY",
                                         "https://publications.europa.eu/resource/authority/frequency/MONTHLY",
                                         "https://publications.europa.eu/resource/authority/frequency/DAILY")) {
  freq <- freq[1]

  paste0(
    "<dct:accrualPeriodicity rdf:resource=",
    add_quotes(freq),
    "/>"
  )
}


