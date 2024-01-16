test_that("dct_spatial returns a character vector", {
  expect_type(dct_spatial(), "character")
})

test_that("dct_spatial returns a vector of length 1", {
  expect_equal(length(dct_spatial()), 1L)
})

