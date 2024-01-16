test_that("dct_issued returns a character vector", {
  expect_type(dct_issued(), "character")
})

test_that("dct_issued returns a vector of length 1", {
  expect_equal(length(dct_issued()), 1L)
})

test_that("dct_issued returns an error if arguments are of length greater than 1", {
  expect_error(dct_issued(date = c(Sys.Date(), Sys.Date() - 1)))
})

