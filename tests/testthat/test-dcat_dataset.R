test_that("dcat_dataset returns a character vector", {
  expect_type(dcat_dataset(), "character")
})

test_that("dcat_dataset returns a character vector of length greater than 1", {
  expect_gt(length(dcat_dataset()), 1L)
})
