test_that("Basic Test of Waiting", {
  t1 <- Sys.time()
  t <- system.time(sleep_test(FALSE))
  t2 <- Sys.time()
  expect_true(t[[3]] < 1)
  expect_true(as.numeric(difftime(t2,t1)) < 1)
})

test_that("Test of Running a Java application", {
  t1 <- Sys.time()
  t <- system.time(java_test())
  t2 <- Sys.time()
  expect_true(t[[3]] < 1)
  expect_true(as.numeric(difftime(t2,t1)) < 1)
})
