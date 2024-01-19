test_that("f_gen_tag generates a function/closure", {
  expect_type(f_gen_tag(), "closure")
})

test_that("f_gen_tag2 generates a function/closure", {
  expect_type(f_gen_tag2(), "closure")
})
