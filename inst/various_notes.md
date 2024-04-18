
See https://ckan.opendata.swiss/api/3/action/harvest_source_list for catalog examples. See https://www.web.statistik.zh.ch/ogd/harvester/stadt-winterthur.xml or https://www.web.statistik.zh.ch/ogd/harvester/statistisches-amt-kanton-zuerich.xml or
https://ckan-prod.zurich.datopian.com/catalog.rdf




## Classes of DCAT-AP CH

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


The properties above are those of DCAT-AP CH V1 (I think).


## DCAT-AP CH V2

There is now V2:
- https://www.dcat-ap.ch/
- https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html

- https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html#changes-overview
- https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html#dcat-ap-building-blocks

- The Requirement level "conditional" was replaced by the "recommended", to align with the DCAT-AP's notation

**Classes**:
- Catalog --> `dcat:Catalog`
- Dataset --> `dcat:Dataset`
- Distribution --> `dcat:Distribution`
- Data Service --> `dcat:DataService`

See https://www.dcat-ap.ch/releases/2.0/dcat-ap-ch.html#classes

### Mandatory (and some recommended) properties (V2)

Properties of `dcat:Catalog`:
- description: `dct:description` (mandatory)
- publisher: `dct:publisher` (mandatory)
- title: `dct:title` (mandatory)
- dataset, `dcat:dataset`, recommended (V1: mandatory)
- ... (other properties, recommended)
- homepage, `foaf:homepage`, recommended
- language, `dct:language`, recommended
- issued, `dct:issued`, recommended
- rights, `dct:rights`, recommended
- service, `dcat:service`, recommended
- spatial, `dct:spatial`, recommended
- themeTaxonomy, `dcat:themeTaxonomy`, recommended
- modified, `dct:modified`, recommended




Properties of `dcat:Dataset`:
- title, `dct:title`, mandatory, multilingual
- description, `dct:description`, mandatory, multilingual
- publisher, `dct:publisher`, mandatory, import format changed
- contact point, `dcat:contactPoint`, mandatory
- identifier, `dct:identifier`, mandatory
- distribution, `dcat:distribution`, recommended (V1: mandatory)
- ... (other properties, recommended)
- keyword, `dcat:keyword`, recommended
- landingPage, `dcat:landingPage`, recommended
- issued, `dct:issued`, recommended
- spatial, `dct:spatial`, recommended
- temporal, `dct:temporal`, recommended
- theme, `dcat:theme`, recommended
- modified, `dct:modified`, recommended



Properties of `dcat:Distribution`:
- access url, `dcat:accessURL`, mandatory
- license, `dct:license`, mandatory
- rights, `dct:rights`, recommended (V1: mandatory)
- ... (other properties, recommended)
- availability, `dcatap:availability`, recommended
- description, `dct:description`, recommended
- format, `dct:format`, recommended
- title, `dct:title`, recommended
- modified, `dct:modified`, recommended

