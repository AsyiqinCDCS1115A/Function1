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


detect_missing_values <- function(data) {
  missing_counts <- numeric(ncol(data))
  names(missing_counts) <- colnames(data)

  for(i in 1:ncol(data)) {
    missing_counts[i] <- sum(is.na(data[[i]]))
  }

  missing_counts <- missing_counts[missing_counts > 0]
  return(missing_counts)
}

data_imputated <- sample_data2

sample_data2 <- data.frame(
  Time = c(3.0, 2.0, NA, 2.5, 1.9),
  Speed = c(50,NA,65,70,85),
  Distance = c(1.2, 2.0, 3.0, 2.5, 3.5)
)

sample_data2
data_imputated <- sample_data2

detect_missing_values(sample_data2)

median_impute <- function(x){
  x[is.na(x)] <- median(x, na.rm = TRUE)
  return (x)
}

sample_data2 <- sapply(sample_data2, median_impute)
print(sample_data2)

