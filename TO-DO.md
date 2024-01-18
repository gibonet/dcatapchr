
M: mandatory property  
R: recommended property  


- [x] dcat:accessURL --> `dcat_accessURL()`. Goes in `dcat:Distribution` (M)  
- [x] dcat:Catalog --> `dcat_catalog()` (review arguments)  
- [x] dcat:contactPoint --> `dcat_contactPoint()`. Goes in `dcat:Dataset` (M)  
- [x] dcat:Dataset / dcat:dataset --> `dcat_dataset()`  
- [x] dcat:Distribution / dcat:distribution --> `dcat_distribution()`. Goes in `dcat:Dataset` (M in V1, R in V2)  
- [x] dct:description --> `dct_description()`  
- [x] dct:identifier --> `dct_identifier()`  
- [x] dct:issued --> `dct_issued()`  
- [x] dct:publisher --> `dct_publisher()`  
- [x] dct:rights --> `dct_rights()`  
- [x] dct:title --> `dct_title()`. Goes in `dcat:Catalog` (V2, M), `dcat:Dataset` (M), `dcat:Distribution` (R)   


- [x] foaf:homepage --> `foaf_homepage()`  
- [x] dct:language --> `dct_language()`  
- [ ] dcat:service --> `dcat_service()`  
- [x] dct:spatial --> `dct_spatial()`  
- [x] dcat:themeTaxonomy --> `dcat_themeTaxonomy()`  
    - Vedi sotto per un esempio...  
- [x] dct:modified --> `dct:modified()`  


- [x] dcat:keyword --> `dcat_keyword()`  
- [x] dcat:landingPage --> `dcat_landingPage()`  
- [x] dct:temporal --> `dct:temporal()`  
- [x] dcat:theme --> `dcat:theme()`  


- [x] dct:license --> `dct_license()`  
- [ ] dcatap:availability --> `dcatap_availability()`  
    - https://publications.europa.eu/resource/authority/planned-availability  
    - ...  
- [x] dct:format --> `dct_format()`  



Esempio di dcat:themeTaxonomy:  
```
<?xml version="1.0" encoding="utf-8" ?>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
         xmlns:dcat="http://www.w3.org/ns/dcat#">

  <dcat:Catalog rdf:about="https://swisstopo/opendata/catalog">
    <dcat:themeTaxonomy rdf:resource="http://publications.europa.eu/resource/authority/data-theme"/>
  </dcat:Catalog>

</rdf:RDF>
```

