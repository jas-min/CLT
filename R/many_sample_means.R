#' perform the sample_mean process many times aka reps 
#'
#' @param vec a vector
#' @param n integer
#' @param reps amount of repetitions
#'
#' @return a vector of the results
#'
#' @import stringr
#' @import dplyr
#'
#' @export

many_sample_means <- function(vec, n, reps) {
  x <- replicate(reps, sample_mean(vec, n))
  return(x)
}