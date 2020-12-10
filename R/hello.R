#' Slee test
#' @param wait logical
#' @export

sleep_test <- function(wait){
  r <- system("ping -n 5 127.0.0.1", intern = wait, wait = wait)
  return(TRUE)
}
