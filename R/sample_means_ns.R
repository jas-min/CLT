#' It should perform the many_sample_means process for each of the values in the ns vector
#'
#' @param vec a vector
#' @param reps repetitions
#' @param reps a vector
#'
#' @return a data frame with the results
#'
#' @import stringr
#' @import dplyr
#'
#' @export

sample_means_ns <- function(vec, reps, ns) {
  n <- rep(ns, times = reps)
  sample.mean <- rep(NA, length(n))
  
  j=1
  for (i in n) {
    sample.mean[j] <- sample_mean(vec, i)
    j = j + 1
  } 
  
  return(as_tibble(cbind(sample.mean, n)))
}