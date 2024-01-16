test_that("dct_title returns a character vector", {
  expect_type(dct_title(), "character")
})

test_that("dct_title returns a vector of length 1", {
  expect_equal(length(dct_title()), 1L)
})

test_that("dct_title returns an error if arguments are of length greater than 1", {
  expect_error(dct_title(title = c("x", "y")))
})

