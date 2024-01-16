test_that("dcat_contactPoint returns a character vector", {
  expect_type(dcat_contactPoint(), "character")
})

test_that("dcat_contactPoint returns a character vector of length greater than 1", {
  expect_gt(length(dcat_contactPoint()), 1L)
})
