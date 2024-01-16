test_that("dct_rights returns a character vector", {
  expect_type(dct_rights(), "character")
})

test_that("dct_rights returns a vector of length 1", {
  expect_equal(length(dct_rights()), 1L)
})


