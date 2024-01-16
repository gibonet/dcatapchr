test_that("dct_format returns a character vector", {
  expect_type(dct_format(), "character")
})

test_that("dct_format returns a vector of length 1", {
  expect_equal(length(dct_format()), 1L)
})

test_that("dct_format returns an error with a vector of length greater than 1", {
  expect_error(dct_format(c("x", "y")))
})

