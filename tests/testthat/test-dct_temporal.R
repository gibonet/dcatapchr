test_that("dct_temporal returns a character vector", {
  expect_type(dct_temporal(), "character")
})

test_that("dct_temporal returns a character vector of length greater than 1", {
  expect_gt(length(dct_temporal()), 1L)
})

test_that("dct_temporal returns an error if one of the arguments have a length different from 1", {
  expect_error(dct_temporal(startDate = c("x", "y")))
  expect_error(dct_temporal(endDate = c("x", "y")))
  expect_error(dct_temporal(startDate = NULL))
})
