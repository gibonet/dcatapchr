test_that("dcat_keyword returns a character vector", {
  expect_type(dcat_keyword(), "character")
})

test_that("dcat_keyword returns a vector of length 1", {
  expect_equal(length(dcat_keyword()), 1L)
})
