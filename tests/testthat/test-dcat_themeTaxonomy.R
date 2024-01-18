test_that("dcat_themeTaxonomy returns a character vector", {
  expect_type(dcat_themeTaxonomy(), "character")
})

test_that("dcat_themeTaxonomy returns a vector of length 1", {
  expect_equal(length(dcat_themeTaxonomy()), 1L)
})

test_that("dcat_themeTaxonomy returns an error if arguments are of length greater than 1", {
  expect_error(dcat_themeTaxonomy(title = c("x", "y")))
})

