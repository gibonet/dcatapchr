test_that("dcat_downloadURL returns a length 1 character vector", {
  expect_equal(length(dcat_downloadURL()), 1L)
  expect_type(dcat_downloadURL(), "character")
})

test_that("dcat_downloadURL returns an error if size is greater than 1", {
  expect_error(dcat_downloadURL(size = c(3L, 4L)))
})
