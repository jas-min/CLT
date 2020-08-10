library(testthat)
library(CLT)

test_that("returns a vector of sample means", {
  
  correct_result <- any(3, 5, 8, 9, 4, 1, 6, 8, 4)
  
  my_result <- many_sample_means(c(3, 5, 8, 9, 4, 1, 6, 8, 4), 1, 1)
  
  expect_equal(my_result, correct_result)
})