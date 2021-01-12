library(switchcase)

bmi <- function(mass, size) {
      ind <- mass / size^2
      switchCase(
            ind,
            alt(
                  ..expr <= 15,
                  { cat("Your body mass index is ", ind, " which is very severely underweight.\n") },
                  "very severely underweight"
            ),
            alt(
                  ..expr > 15 & ..expr <= 16,
                  { cat("Your body mass index is ", ind, " which is severely underweight.\n") },
                  "severely underweight"
            ),
            alt(
                  ..expr > 16 & ..expr <= 18.5,
                  { cat("Your body mass index is ", ind, " which is underweight.\n") },
                  "underweight"
            )
      )
}
bmi.person1 <- bmi(40.9, 1.65)
cat("Person1 turned out to be ", bmi.person1)
