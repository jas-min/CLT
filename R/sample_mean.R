#' This function should take as input a vector vec and an integer n. It should take a random sample of size n from vec
#'
#' @param vec A factor
#' @param n an integer
#'
#' @return the mean of that subsample
#'
#' @import stringr
#' @import dplyr
#'
#' @export

sample_mean <- function(vec, n) {
  x <- sample(vec, n, replace = TRUE)
  return(mean(x))
}