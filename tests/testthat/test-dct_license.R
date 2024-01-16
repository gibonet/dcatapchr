test_that("dct_license returns a character vector", {
  expect_type(dct_license(), "character")
})

test_that("dct_license returns a character vector of length greater than 1", {
  expect_gt(length(dct_license()), 1L)
})

test_that("dct_license returns an error if argument length is not 1", {
  expect_error(dct_license(about = c("x", "y")))
  expect_error(dct_license(about = NULL))
})

