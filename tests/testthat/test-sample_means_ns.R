library(testthat)
library(CLT)

test_that("returns a tibble of sample means and respective subset", {
  
  correct_result <- as_tibble(cbind(sample.mean = any(c(3, 5, 8, 9, 4, 1, 6, 8, 4),
                                                      c(3, 5, 8, 9, 4, 1, 6, 8, 4),
                                                      c(3, 5, 8, 9, 4, 1, 6, 8, 4),
                                                      c(3, 5, 8, 9, 4, 1, 6, 8, 4),
                                                      c(3, 5, 8, 9, 4, 1, 6, 8, 4))), n = c(1, 1, 1, 1, 1))
  
  my_result <- sample_means_ns(c(3, 5, 8, 9, 4, 1, 6, 8, 4), 5, 1)
  
  expect_equal(my_result, correct_result)
})