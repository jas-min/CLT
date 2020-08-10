library(testthat)
library(CLT)

test_that("returns a tibble of sample means and respective subset", {
  
  correct_result <- as_tibble(cbind(sample.mean = c(5.40, 4.40, 5.50, 6.00, 5.60, 5.15, 6.00, 4.80, 5.95), n = c(5, 10, 20, 5, 10, 20, 5, 10, 20)))
  
  my_result <- sample_means_ns(c(3, 5, 8, 9, 4, 1, 6, 8, 4), 5, c(5, 10, 20))
  
  expect_equal(my_result, correct_result)
})