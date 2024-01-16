test_that("dct_description returns a character vector", {
  expect_type(dct_description(), "character")
})

test_that("dct_description returns a vector of length 1", {
  expect_equal(length(dct_description()), 1L)
})

test_that("dct_description returns an error with a vector of length greater than 1", {
  expect_error(dct_description(c("x", "y")))
})
