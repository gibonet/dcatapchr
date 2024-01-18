test_that("dcat_servesDataset returns a character vector", {
  expect_type(dcat_servesDataset(), "character")
})

test_that("dcat_servesDataset returns a vector of length 1", {
  expect_equal(length(dcat_servesDataset()), 1L)
})

test_that("dcat_servesDataset returns an error if arguments are of length greater than 1", {
  expect_error(dcat_servesDataset(title = c("x", "y")))
})
