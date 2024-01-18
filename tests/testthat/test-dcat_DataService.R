test_that("dcat_DataService returns a character vector", {
  expect_type(dcat_DataService(), "character")
})

test_that("dcat_DataService returns a character vector of length greater than 1", {
  expect_gt(length(dcat_DataService()), 1L)
})

test_that("dcat_DataService accepts additional arguments (...)", {
  expect_gt(
    length(dcat_DataService(title = dct_title("Titolo"))),
    length(dcat_DataService())
  )
})

