# Matt Curcio
# For Coursera: R programming Course
# Programming Project 1
# Nov. 30, 2020

# This R program is designed to use the 'specdata' from Coursera/R programming project from Week 2.

#> Part 3: Write a function that takes a directory of data files and a threshold for complete cases and calculates the **correlation between sulfate and nitrate** for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. A prototype of this function follows

# For this function you will need to use the 'cor' function in R which calculates the correlation between two vectors. Please read the help page for this function via '?cor' and make sure that you know how to use it.

# You can see some example output from this function below. The function that you write should be able to approximately match this output. Note that because of how R rounds and presents floating point numbers, the output you generate may differ slightly from the example output. Please save your code to a file named corr.R. To run the submit script for this part, make sure your working directory has the file corr.R in it.

# e.g. corr(directory, threshold = int)
---
cr <- corr("specdata", 150)
head(cr)
## [1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814
summary(cr)
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max.
## -0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313

cr <- corr("specdata", 400)
head(cr)
## [1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860
summary(cr)
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max.
## -0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313

cr <- corr("specdata", 5000)
summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
##

# complete func #################################
# Return a list of matrix of file-ID-numbers and the number of complete
# observations from that file-ID-number.
#################################################
complete <- function(directory_name, id_range=1:332) {
   # Get full path of folder
   directory <- paste(getwd(), "/", directory_name, "/", sep = "")
   file_list <- list.files(directory)
   # Initialize df
   data <- matrix(0, nrow = 0, ncol = 2,
                  dimnames = list(NULL, c("id","nobs")))
   # Count complete observations
   for (i in id_range){
      file <- paste(directory, file_list[i], sep = "")
      file_i_data <- read.csv(file)
      complete_obs = 0
      for (row in 1:nrow(file_i_data)) {
         if (any(is.na(file_i_data[row,])) == FALSE){
            complete_obs <- complete_obs + 1
         }
      }
      complete_obs_per_file <- c(i, complete_obs)
      data <- c(data, complete_obs_per_file)
   }
   # print(data)
   return(data)
}

#test of complete
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

print(cc[use, ])

# corr function ###################################
# `corr` function takes a directory of data files and a threshold for
# complete cases (an integer) and calculates the **correlation between
# sulfate and nitrate** for monitor ID-number (locations) where the number
# of completely observed cases (on all variables) is greater than the threshold.
###################################################
corr <- function(directory_name="specdata", threshold) {
   # Get full path of folder
   directory <- paste(getwd(), "/", directory_name, "/", sep = "")
   file_list <- list.files(directory)

   correlation_vector_num <- numeric() # Initialize corr vector

   df <- complete(directory_name, id_range=1:332)
   # test
   # threshold = 100
   # i=2
   # Count complete observations
   for (i in 1:nrow(df)){
       if (df[i,2] >= threshold) {
          file <- paste(directory, file_list[i], sep = "")
          file_i_data <- read.csv(file)
          correlation_i <- cor(x = file_i_data[, 2],
                               y = file_i_data[, 3],
                               use = "complete.obs")
          correlation_vector_num <- c(correlation_vector_num,
                                      correlation_i)
          }
   }
   # print(data)
   return(correlation_vector_num)
}


