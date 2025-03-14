# this is the Test cases
library(testthat)
library(dplyr)
set.seed(2024)

source("function.R")

# Test cases
test_that("Leap year function works correctly", {
  
  # Normal valid cases
  expect_true(is_leap(1600))    # Leap year (divisible by 400)
  expect_false(is_leap(1700))   # Not a leap year (divisible by 100 but not 400)
  expect_true(is_leap(2024))    # Leap year (divisible by 4, not 100)
  expect_false(is_leap(2023))   # Not a leap year
  expect_false(is_leap(2100))   # Not a leap year
  expect_true(is_leap(2400))    # Leap year
  
})

test_that("check incorrect input", {
  # Edge cases
  expect_error(is_leap(0), "Year must be a positive integer greater than 0")
  expect_error(is_leap(-2024), "Year must be a positive integer greater than 0")
  expect_error(is_leap("2024"), "Input must be a single numeric value")
  expect_error(is_leap(2023.5), "Year must be an integer")
  expect_error(is_leap(NA), "Input must be a single numeric value")
})