

# https://www.easyrdf.org/converter
# https://opendata.swiss/fr/dataset/statistisches-jahrbuch-der-schweiz-18931.rdf

# devtools (check, build, load, ...) ------------
library(devtools)

load_all(".")

document()
check_man()
build_readme()
# check()
check(args = "--no-tests")

build()
install(upgrade = "never")

test()
check()  # check() + test()


# dct_description issue -------------------------
# In the txt imported (with readLines) there is an
# url, https://www3.ti.ch/DFE/DR/USTAT/index.php?fuseaction=temi.dettaglioMeta&metId=1002&p1=40&p2=219&p3=221&proId=220&t=1,
# that does not pass the easyrdf validator
# (https://www.easyrdf.org/converter).
# Is there a way to make such an url to be "valid"
# What is the problem?
# - "=" character?
# - "&" character?  --> YES, these are problematic
#   - substitute & with %26  --> NO

"https://www3.ti.ch/DFE/DR/USTAT/index.php?fuseaction=definizioni.fonti&amp;tema=35&amp;id=64&amp;proID=178&#13;"
"https://www3.ti.ch/DFE/DR/USTAT/index.php?fuseaction=definizioni.fonti&tema=35&id=64&proID=178"

tmp <- "https://www3.ti.ch/DFE/DR/USTAT/index.php?fuseaction=temi.dettaglioMeta&metId=1002&p1=40&p2=219&p3=221&proId=220&t=1"
gsub("&", "&amp;", tmp, fixed = TRUE)

# Sì così funziona



# Copia tar.gz nel progetto 00_copia_sorgenti_gib_packs -------------
file.copy(
  "../dcatapchr_0.0.0.0.tar.gz", to = "../00_copia_sorgenti_gib_packs/"
)

# Re-style R scripts
styler::style_pkg()



# usethis (test, ...) -----------------
library(usethis)
# create_package(path = ".")

use_testthat()

use_test("add_quotes")
use_test("check_language")
use_test("dcat_accessURL")
use_test("dcat_catalog")
use_test("dcat_contactPoint")
use_test("dcat_dataset")
use_test("dcat_distribution")
use_test("dcat_keyword")
use_test("dcat_landingPage")
use_test("dcat_theme")
use_test("dct_accrualPeriodicity")
use_test("dct_description")
use_test("dct_format")
use_test("dct_identifier")
use_test("dct_issued")
use_test("dct_language")
use_test("dct_license")
use_test("dct_license2")
use_test("dct_modified")
use_test("dct_publisher")
use_test("dct_rights")
use_test("dct_spatial")
use_test("dct_temporal")
use_test("dct_title")
use_test("foaf_homepage")
use_test("indent")
use_test("rdf_dataset")



# covr::package_coverage() ------------
# Da eseguire in una nuova sessione R
library(covr)
cov <- package_coverage()
cov
# as.data.frame(cov)
# report()
report(cov, file = "dcatapchr-report.html")


# pkgdown -----------------------------
library(pkgdown)
pkgdown::build_site()



# trials ------------------------------
library(xml2)

x <- read_xml("https://www.web.statistik.zh.ch/ogd/harvester/stadt-winterthur.xml")
y <- as_list(x)

names(y)
y$RDF

names(y$RDF$Catalog$dataset)

names(y$RDF$Catalog$dataset$Dataset)



