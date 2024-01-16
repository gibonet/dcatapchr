test_that("dcat_landingPage returns a character vector", {
  expect_type(dcat_landingPage(), "character")
})

test_that("dcat_landingPage returns a vector of length 1", {
  expect_equal(length(dcat_landingPage()), 1L)
})
