test_that("dcat_byteSize returns a length 1 character vector", {
  expect_equal(length(dcat_byteSize()), 1L)
  expect_type(dcat_byteSize(), "character")
})

test_that("dcat_byteSize returns an error if size is greater than 1", {
  expect_error(dcat_byteSize(size = c(3L, 4L)))
})

