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
  expect_error(lib_summary("foo"), "unused argument")
})

#expect error snapshot_testing
