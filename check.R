

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


