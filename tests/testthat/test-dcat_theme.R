test_that("dcat_theme returns a character vector", {
  expect_type(dcat_theme(), "character")
})

test_that("dcat_theme returns a vector of length 1", {
  expect_equal(length(dcat_theme()), 1L)
})

test_that("dcat_theme returns an error with a vector of length greater than 1", {
  expect_error(dcat_theme(c("x", "y")))
})

