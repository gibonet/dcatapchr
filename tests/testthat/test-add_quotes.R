test_that("add_quotes works", {
  expect_gt(nchar(add_quotes("a")), nchar("a"))
})

