test_that("indent returns a character vector with more characters", {
  expect_gt(nchar(indent("a")), nchar("a"))
})

test_that("indent by 4 has 2 more characters than indent by 2", {
  expect_equal(nchar(indent("a", nspaces = 4)) - nchar(indent("a", nspaces = 2)), 2L)
})

test_that("indent returns a vector of same length of the input", {
  expect_equal(length(letters), length(indent(letters)))
})

test_that("indent returns a character vector", {
  expect_type(indent(1:5), "character")
})
