test_that("dcat_accessURL returns a character vector", {
  expect_type(dcat_accessURL(), "character")
})

test_that("dcat_accessURL returns a vector of length 1", {
  expect_equal(length(dcat_accessURL()), 1L)
})

