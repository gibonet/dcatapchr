test_that("dct_license2 returns a character vector", {
  expect_type(dct_license2(), "character")
})

test_that("dct_license2 returns a vector of length 1", {
  expect_equal(length(dct_license2()), 1L)
})
