test_that("foaf_homepage returns a character vector", {
  expect_type(foaf_homepage(), "character")
})

test_that("foaf_homepage returns a vector of length 1", {
  expect_equal(length(foaf_homepage()), 1L)
})

test_that("foaf_homepage returns an error if arguments are of length greater than 1", {
  expect_error(foaf_homepage(x = c("x", "y")))
})
