best("NY", "heart attack")


rankhospital("NC", "heart attack", "worst")

rankhospital("WA", "heart attack")


rankall("WA", "heart attack")


r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
