# this is the function page
is_leap <- function(year) {
  # check valid input
  if (!is.numeric(year) || length(year) != 1 || is.na(year)) {
    stop("Input must be a single numeric value.")
  }
  if (year <= 0) {
    stop("Year must be a positive integer greater than 0.")
  }
  if (year %% 1 != 0) {
    stop("Year must be an integer.")
  }
  
  # If the year is divisible by four, it’s a leap year
  # But if the year can be divided by 100 as well as four, it’s not a leap year
  # However, if the year is divisible by 400, it is a leap year
  if ((year%%4 == 0 && year%%100!=0 )||(year%%400 == 0)){
      return (TRUE)
  }
  else {
    return (FALSE)
  }
}