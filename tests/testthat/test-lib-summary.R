test_that("lib_summary returns packages", {
  res <- lib_summary()
  #Datentyp
  expect_s3_class(res, "data.frame")
  #Anzahl der Spalten
  expect_equal(ncol(res), 2)
  #namen
  expect_equal(names(res), c("Library", "n_packages"))
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails", {
  expect_error(lib_summary("foo"), "'sizes' must be TRUE or FALSE")
})

#expect error snapshot_testing


test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  #Datentyp
  expect_s3_class(res, "data.frame")
  #Anzahl der Spalten
  expect_equal(ncol(res), 3)
  #namen
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")
  expect_type(res$lib_size, "double")
})
