test_that("dcat_endpointURL returns a character vector", {
  expect_type(dcat_endpointURL(), "character")
})

test_that("dcat_endpointURL returns a vector of length 1", {
  expect_equal(length(dcat_endpointURL()), 1L)
})

test_that("dcat_endpointURL returns an error if arguments are of length greater than 1", {
  expect_error(dcat_endpointURL(title = c("x", "y")))
})

