
library(brokenPackage)

message("about to start")

t1 <- Sys.time()
t <- system.time(sleep_test(FALSE))
t2 <- Sys.time()
stopifnot(t[[3]] < 1)
stopifnot(as.numeric(difftime(t2,t1)) < 1)

message("second test")

t1 <- Sys.time()
t <- system.time(java_test())
t2 <- Sys.time()
stopifnot(t[[3]] < 1)
stopifnot(as.numeric(difftime(t2,t1)) < 1)
