test_that("f_gen_tag generates a function/closure", {
  expect_type(f_gen_tag(), "closure")
})

test_that("f_gen_tag generates an error if tag has length > 1", {
  f <- f_gen_tag(tag = c("x", "y"))
  expect_error(f())
  rm(f)
})

test_that("f_gen_tag2 generates a function/closure", {
  expect_type(f_gen_tag2(), "closure")
})

test_that("f_gen_tag2 generates an error if tag has length > 1", {
  f <- f_gen_tag2(tag = c("x", "y"))
  expect_error(f())
  rm(f)
})

test_that("f_gen_tag generates a function/closure that returns a character vector of length 1", {
  f <- f_gen_tag()
  f <- f()
  expect_type(f, "character")
  expect_equal(length(f), 1L)
  rm(f)
})

test_that("f_gen_tag2 generates a function/closure that returns a character vector of length 1", {
  f <- f_gen_tag2()
  f <- f()
  expect_type(f, "character")
  expect_equal(length(f), 1L)
  rm(f)
})
