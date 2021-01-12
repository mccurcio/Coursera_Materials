# Loading library
library(plyr)

# Creating a data frame
df = data.frame(
      "col1" = c("abc", "def", "ghi"),
      "col2" = c("R", "Python", "Java"),
      "col3" = c(22, 25, 45)
)
df

# Calling rename() function
library(plyr)
rename(df, c("col1" = "Name", "col2" = "Language", "col3" = "Age"))
