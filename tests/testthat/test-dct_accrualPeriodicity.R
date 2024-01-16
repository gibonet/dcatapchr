test_that("dct_accrualPeriodicity returns a character vector", {
  expect_type(dct_accrualPeriodicity(), "character")
})

test_that("dct_accrualPeriodicity returns a vector of length 1", {
  expect_equal(length(dct_accrualPeriodicity()), 1L)
})

