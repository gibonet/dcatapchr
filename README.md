
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dcatapchr

<!-- badges: start -->
<!-- badges: end -->

The goal of dcatapchr is to create a metadata catalog compatible with
the DCAT-AP CH standard.

See for example:  
- <https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html>  
-
<https://handbook.opendata.swiss/de/content/glossar/bibliothek/dcat-ap-ch.html>

## Classes of DCAT-AP CH

-   Catalog, `dcat:Catalog`, mandatory  
-   Dataset, `dcat:Dataset`, mandatory  
-   Distribution, `dcat:Distribution`, mandatory

Properties of `dcat:Catalog`:  
- dataset, `dcat:dataset`, mandatory

Properties of `dcat:Dataset`:  
- title, `dct:title`, mandatory, multilingual  
- description, `dct:description`, mandatory, multilingual  
- publisher, `dct:publisher`, mandatory, import format changed  
- contact point, `dcat:contactPoint`, mandatory  
- identifier, `dct:identifier`, mandatory  
- distribution, `dcat:distribution`, mandatory  
- … (other properties, conditional or optional)

Properties of `dcat:Distribution`:  
- issued, `dct:issued`, mandatory  
- access url, `dcat:accessURL`, mandatory  
- rights, `dct:rights`, mandatory  
- … (other properties, conditional or optional)

## Installation

You can install the development version of dcatapchr like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dcatapchr)

# Create the metadata of a dataset with 3 distributions

# First create the 3 distributions
distributions <- c(
  dcat_distribution(
    issued = dct_issued("2021-10-14"), 
    access_url = dcat_accessURL("https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_xlsx.zip"), 
    rights = dct_rights(
      "NonCommercialAllowed-CommercialAllowed-ReferenceRequired"
    )
  ),
  
  dcat_distribution(
    issued = dct_issued("2021-10-14"), 
    access_url = dcat_accessURL("https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_px.zip"), 
    rights = dct_rights(
      "NonCommercialAllowed-CommercialAllowed-ReferenceRequired"
    )
  ),
  
  dcat_distribution(
    issued = dct_issued("2021-10-14"), 
    access_url = dcat_accessURL("https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip"), 
    rights = dct_rights(
      "NonCommercialAllowed-CommercialAllowed-ReferenceRequired"
    )
  )
)

distributions
#>  [1] "<dcat:distribution>"                                                                                        
#>  [2] "  <dcat:Distribution>"                                                                                      
#>  [3] "    <dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">2021-10-14T00:00:00</dct:issued>"
#>  [4] "    <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_xlsx.zip\"/>"  
#>  [5] "    <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>"                      
#>  [6] "  </dcat:Distribution>"                                                                                     
#>  [7] "</dcat:distribution>"                                                                                       
#>  [8] "<dcat:distribution>"                                                                                        
#>  [9] "  <dcat:Distribution>"                                                                                      
#> [10] "    <dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">2021-10-14T00:00:00</dct:issued>"
#> [11] "    <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_px.zip\"/>"    
#> [12] "    <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>"                      
#> [13] "  </dcat:Distribution>"                                                                                     
#> [14] "</dcat:distribution>"                                                                                       
#> [15] "<dcat:distribution>"                                                                                        
#> [16] "  <dcat:Distribution>"                                                                                      
#> [17] "    <dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">2021-10-14T00:00:00</dct:issued>"
#> [18] "    <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip\"/>"   
#> [19] "    <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>"                      
#> [20] "  </dcat:Distribution>"                                                                                     
#> [21] "</dcat:distribution>"

# Then create the dataset with the 3 distributions created above
description <- readLines(
  system.file(
    "cubi_POL_01_INFORMAZIONI.txt", package = "dcatapchr"
  ), encoding = "UTF-8"
)
description <- strwrap(description, width = 80)
description <- paste(description, collapse = "\n")

dataset <- dcat_dataset(
  title = dct_title(
    title = "Partecipazione alle elezioni del Consiglio di Stato, per comune, in Ticino, dal 1921 al 2011", 
    language = "it"
  ), 
  description = dct_description(
    description = description, 
    language = "it"
  ), 
  publisher = dct_publisher(publisher = "https://www.ti.ch/ustat", foaf_name = "Ustat"), 
  contactPoint = dcat_contactPoint(), 
  identifier = dct_identifier(),
  distribution = distributions
)

# dataset

# And finally put the dataset in a catalog
catalog <- dcat_catalog(
  catalog_endpoint = "https://www3.ti.ch/DFE/DR/USTAT/allegati/digitale/catalogo_ustat.rdf", 
  datasets = dataset
)

head(catalog, n = 15)
#>  [1] "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"                                                                                                
#>  [2] "<rdf:RDF "                                                                                                                                  
#>  [3] "  xmlns:foaf=\"http://xmlns.com/foaf/0.1/\""                                                                                                
#>  [4] "  xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\""                                                                                     
#>  [5] "  xmlns:hydra=\"http://www.w3.org/ns/hydra/core#\""                                                                                         
#>  [6] "  xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\""                                                                                
#>  [7] "  xmlns:dcat=\"http://www.w3.org/ns/dcat#\""                                                                                                
#>  [8] "  xmlns:dct=\"http://purl.org/dc/terms/\""                                                                                                  
#>  [9] "  xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\""                                                                                          
#> [10] "  xmlns:schema=\"http://schema.org/\""                                                                                                      
#> [11] ">"                                                                                                                                          
#> [12] "  <dcat:Catalog rdf:about=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/digitale/catalogo_ustat.rdf\">"                                        
#> [13] "    <dcat:dataset>"                                                                                                                         
#> [14] "      <dcat:Dataset>"                                                                                                                       
#> [15] "        <dct:title xml:lang=\"it\">Partecipazione alle elezioni del Consiglio di Stato, per comune, in Ticino, dal 1921 al 2011</dct:title>"


tail(catalog, n = 20)
#>  [1] "          </dcat:Distribution>"                                                                                     
#>  [2] "        </dcat:distribution>"                                                                                       
#>  [3] "        <dcat:distribution>"                                                                                        
#>  [4] "          <dcat:Distribution>"                                                                                      
#>  [5] "            <dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">2021-10-14T00:00:00</dct:issued>"
#>  [6] "            <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_px.zip\"/>"    
#>  [7] "            <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>"                      
#>  [8] "          </dcat:Distribution>"                                                                                     
#>  [9] "        </dcat:distribution>"                                                                                       
#> [10] "        <dcat:distribution>"                                                                                        
#> [11] "          <dcat:Distribution>"                                                                                      
#> [12] "            <dct:issued rdf:datatype=\"http://www.w3.org/2001/XMLSchema#dateTime\">2021-10-14T00:00:00</dct:issued>"
#> [13] "            <dcat:accessURL rdf:resource=\"https://www3.ti.ch/DFE/DR/USTAT/allegati/cubo/cubi_POL_01_csv.zip\"/>"   
#> [14] "            <dct:rights>NonCommercialAllowed-CommercialAllowed-ReferenceRequired</dct:rights>"                      
#> [15] "          </dcat:Distribution>"                                                                                     
#> [16] "        </dcat:distribution>"                                                                                       
#> [17] "      </dcat:Dataset>"                                                                                              
#> [18] "    </dcat:dataset>"                                                                                                
#> [19] "  </dcat:Catalog>"                                                                                                  
#> [20] "</rdf:RDF>"
# writeLines(catalog, con = "catalogo_ustat.rdf", useBytes = TRUE)
```
