test_that("gen_tag returns a character vector", {
  expect_type(gen_tag(), "character")
})

test_that("gen_tag returns a vector of length 1", {
  expect_equal(length(gen_tag()), 1L)
})

test_that("gen_tag returns an error if tag has length greater than 1", {
  expect_error(gen_tag(tag = c("dct:identifier", "dcat:accessURL")))
})

test_that("gen_tag returns a vector of length greater than 1 if x has length greater than 1", {
  expect_equal(length(gen_tag(x = c("a", "b"))), 2L)
})


test_that("gen_tag2 returns a character vector", {
  expect_type(gen_tag2(), "character")
})

test_that("gen_tag2 returns a vector of length 1", {
  expect_equal(length(gen_tag2()), 1L)
})

test_that("gen_tag2 returns an error if tag has length greater than 1", {
  expect_error(gen_tag2(tag = c("dct:identifier", "dcat:accessURL")))
})

test_that("gen_tag2 returns a vector of length greater than 1 if x has length greater than 1", {
  expect_equal(length(gen_tag2(x = c("a", "b"))), 2L)
})
