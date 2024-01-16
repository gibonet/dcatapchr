test_that("dcat_catalog returns a character vector", {
  expect_type(dcat_catalog(), "character")
})

test_that("dcat_catalog returns a character vector of length greater than 1", {
  expect_gt(length(dcat_catalog()), 1L)
})

test_that("dcat_catalog accepts additional arguments (...)", {
  expect_gt(
    length(dcat_catalog(title = dct_title(title = "Catalog title"))),
    length(dcat_catalog())
  )
})

