#' Slee test
#' @param wait logical
#' @export

sleep_test <- function(wait){

  if(checkmate::test_os("windows")){
    r <- system("ping -n 10 127.0.0.1", intern = wait, wait = wait)
  } else {
    r <- system("sleep 10", intern = wait, wait = wait)
  }
  return(TRUE)
}
