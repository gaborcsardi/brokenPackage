#' Slee test
#' @param wait logical
#' @export

sleep_test <- function(wait){

  if(checkmate::test_os("windows")){
    r <- system("ping -n 100 127.0.0.1", intern = wait, wait = wait)
  } else {
    r <- system("sleep 10", intern = wait, wait = wait)
  }
  return(TRUE)
}

#' Java test
#' @export
java_test <- function(){

  path <- file.path(.libPaths()[1], "brokenPackage","exdata")
  text <- paste0('java -Xmx1G -jar "',
                 file.path(path,'otp-1.5.0-shaded.jar'),
                 '" --router default --graphs "',
                 path, '/graphs"',
                 ' --server --port 8080')
  r <- system(text, intern = FALSE, wait = FALSE)

  return(TRUE)
}
