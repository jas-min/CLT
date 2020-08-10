library(testthat)
library(CLT)

test_that("returns a vector of sample means", {
  
  correct_result <- c(5.000000, 5.100000, 5.400000, 5.866667, 5.866667)
  
  my_result <- many_sample_means(c(3, 5, 8, 9, 4, 1, 6, 8, 4), 30, c(5, 10, 20))
  
  expect_equal(my_result, correct_result)
})