test_that("dct_language returns a character vector", {
  expect_type(dct_language(), "character")
})

test_that("dct_language returns a vector of length 1", {
  expect_equal(length(dct_language()), 1L)
})

test_that("dct_language returns an error if language is not one of 'de', 'fr', 'it' or 'en'", {
  expect_error(dct_language(language = "es"))
})

