test_that("dcat_mediaType returns a length 1 character vector", {
  expect_equal(length(dcat_mediaType()), 1L)
  expect_type(dcat_mediaType(), "character")
})

test_that("dcat_mediaType returns an error if size is greater than 1", {
  expect_error(dcat_mediaType(size = c(3L, 4L)))
})
