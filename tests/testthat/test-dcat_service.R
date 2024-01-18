test_that("dcat_service returns a character vector", {
  expect_type(dcat_service(), "character")
})

test_that("dcat_service returns an error if arguments are of length greater than 1", {
  expect_error(dcat_service(title = c("x", "y")))
})

