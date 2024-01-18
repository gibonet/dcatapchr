test_that("dcat_accessService returns a character vector", {
  expect_type(dcat_accessService(), "character")
})

test_that("dcat_accessService returns a character vector of length greater than 1", {
  expect_gt(length(dcat_accessService()), 1L)
})
