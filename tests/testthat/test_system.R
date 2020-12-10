test_that("Does not wait", {
  t1 <- Sys.time()
  t <- system.time(sleep_test(FALSE))
  t2 <- Sys.time()
  expect_true(t[[3]] < 1)
  expect_true(as.numeric(difftime(t2,t1)) < 1)
})

test_that("Does wait", {
  t1 <- Sys.time()
  t <- system.time(sleep_test(TRUE))
  t2 <- Sys.time()
  expect_true(t[[3]] > 4)
  expect_true(as.numeric(difftime(t2,t1)) > 4)
})
