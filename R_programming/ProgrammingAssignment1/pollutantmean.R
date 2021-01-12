# Matt Curcio
# For Coursera: R programming Course
# Programming Project 1
# Nov. 23, 2020

# This R program is designed to use the 'specdata' from Coursera/R programming project from Week 2.

#> Part 1: Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

# e.g. pollutantmean(directory, pollutant, monitor-ID range)

#pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064128

#pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706047

# pollutantmean("specdata", "nitrate", 23)
## [1] 1.280833


pollutantmean <- function(directory, pollutant, id = 1:332) {
      # Get full path of the specsdata folder
      directory <- paste(getwd(), "/", directory, "/", sep = "")
      
      # Aux variables
      file_list <- list.files(directory)
      data <- NA
      
      #For each id passed as parameter:
      for (i in id) {
            #Read the file,
            file_dir <- paste(directory, file_list[i], sep = "")
            file_data <- read.csv(file_dir)
            
            # accumulate the data
            data <- rbind(data, file_data)
      }
      # Calculate the mean and return it
      mean(data[[pollutant]], na.rm = TRUE)
}












