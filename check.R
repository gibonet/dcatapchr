

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

use_test("nome_funzione")


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


