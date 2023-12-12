# dcatapchr


Create `rdf` files with the standard DCAT-AP CH. See for example:  
- https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html  
- https://handbook.opendata.swiss/de/content/glossar/bibliothek/dcat-ap-ch.html  


# Classes of DCAT-AP CH

- Catalog, `dcat:Catalog`, mandatory  
- Dataset, `dcat:Dataset`, mandatory  
- Distribution, `dcat:Distribution`, mandatory  

Properties of `dcat:Catalog`:  
- dataset, `dcat:dataset`, mandatory  


Properties of `dcat:Dataset`:  
- title, `dct:title`, mandatory, multilingual  
- description, `dct:description`, mandatory, multilingual  
- publisher, `dct:publisher`, mandatory, import format changed  
- contact point, `dcat:contactPoint`, mandatory  
- identifier, `dct:identifier`, mandatory  
- distribution, `dcat:distribution`, mandatory  
- ... (other properties, conditional or optional)  



Properties of `dcat:Distribution`:  
- issued, `dct:issued`, mandatory  
- access url, `dcat:accessURL`, mandatory  
- rights, `dct:rights`, mandatory  
- ... (other properties, conditional or optional)  


