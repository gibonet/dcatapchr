test_that("dct_identifier returns a character vector", {
  expect_type(dct_identifier(), "character")
})

test_that("dct_identifier returns a vector of length 1", {
  expect_equal(length(dct_identifier()), 1L)
})

test_that("dct_identifier returns an error with a vector of length greater than 1", {
  expect_error(dct_identifier(c("x", "y")))
})


