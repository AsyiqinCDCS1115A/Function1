# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

data_sample <- c(2,4,6,8,10,12,13,14)
mean_data <- mean(data_sample)
cat("Mean of the data:", mean_data, "\n")

median_data <- median(data_sample)
cat("Median of the data:", median_data, "\n")

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_data <- get_mode(data_sample)
cat("Mode of the data:", mode_data, "\n")

