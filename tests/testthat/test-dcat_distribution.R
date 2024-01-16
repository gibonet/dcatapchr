test_that("dcat_distribution returns a character vector", {
  expect_type(dcat_distribution(), "character")
})

test_that("dcat_distribution returns a character vector of length greater than 1", {
  expect_gt(length(dcat_distribution()), 1L)
})
