# Matt Curcio
# For Coursera: R programming Course
# Programming Project 1
# Nov. 23, 2020

# This R program is designed to use the 'specdata' from Coursera/R programming project from Week 2.

#> Part 2: Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. A prototype of this function follows

# e.g. complete(directory, monitor-ID range)

complete("specdata", 1)
##   id nobs
## 1  1  117

complete("specdata", c(2, 4, 8, 10, 12))
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96

complete("specdata", 30:25)
##   id nobs
## 1 30  932
## 2 29  711
## 3 28  475
## 4 27  338
## 5 26  586
## 6 25  463

complete("specdata", 3)
##   id nobs
## 1  3  243


complete <- function(directory_name, id_range) {
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
      data <- rbind(data, complete_obs_per_file)
   }
   # print(data)
   return(data)
}

vstr <- "3.5.1"
RNGversion(vstr)

set.seed(42)
use <- sample(332, 10)
#cc <- complete("specdata", 332:1)
print(cc[use, "nobs"])

cr <- corr("specdata")
cr <- sort(cr)
RNGversion("3.5.1")
set.seed(868)
out <- round(cr[sample(length(cr), 5)], 4)
print(out)



cr <- corr("specdata", 129)
cr <- sort(cr)
n <- length(cr)
RNGversion("3.5.1")
set.seed(197)
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)


cr <- corr("specdata", 2000)
n <- length(cr)
cr <- corr("specdata", 1000)
cr <- sort(cr)
print(c(n, round(cr, 4)))
