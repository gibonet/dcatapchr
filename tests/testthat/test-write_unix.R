test_that("write_unix writes to a file with UTF-8 encoding", {
  x <- dcat_catalog(title = "Some accents èé")
  f <- tempfile()
  write_unix(x, filename = f)
  y <- readLines(f, encoding = "UTF-8")
  expect_true("UTF-8" %in% Encoding(y))

  # Remove temporary file
  unlink(f)

  # Remove created objects
  rm(x, f, y)
})
