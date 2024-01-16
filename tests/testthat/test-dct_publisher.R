test_that("dct_publisher returns a character vector", {
  expect_type(dct_publisher(), "character")
})

test_that("dct_publisher returns a character vector of length greater than 1", {
  expect_gt(length(dct_publisher()), 1L)
})

test_that("dct_publisher returns an error if one of the arguments have a length different from 1", {
  expect_error(dct_publisher(publisher = c("x", "y")))
  expect_error(dct_publisher(foaf_name = c("x", "y")))
  expect_error(dct_publisher(foaf_name = NULL))
})

