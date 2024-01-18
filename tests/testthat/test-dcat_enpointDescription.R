test_that("dcat_endpointDescription returns a character vector", {
  expect_type(dcat_endpointDescription(), "character")
})

test_that("dcat_endpointDescription returns a vector of length 1", {
  expect_equal(length(dcat_endpointDescription()), 1L)
})

test_that("dcat_endpointDescription returns an error if arguments are of length greater than 1", {
  expect_error(dcat_endpointDescription(title = c("x", "y")))
})

