library(testthat)
library(CLT)

test_that("return a single sample mean", {
  
  correct_result <- any(3, 5, 8, 9, 4, 1, 6, 8, 4)
  
  my_result <- sample_mean(c(3, 5, 8, 9, 4, 1, 6, 8, 4), 1)
  
  expect_equal(my_result, correct_result)
})