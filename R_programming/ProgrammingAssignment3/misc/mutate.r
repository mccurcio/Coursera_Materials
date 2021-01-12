scores <- scores %>%
      mutate(investigate = case_when(PC1 > 0.2 ~ "investigate",
                                     PC2 > 0.15 ~ "investigate",
                                     PC1 < -0.1 & PC2 > 0.1 ~ "investigate,
                                     TRUE ~ "ok"))


scores <- scores %>%
      mutate(investigate = case_when(PC1 > 0.2 ~ "investigate",
                                     PC2 > 0.15 ~ "investigate",
                                     PC1 < -0.1 & PC2 > 0.1 ~ "investigate,
                                     TRUE ~ "ok"))

# Simplified to only measure the overhead of switch vs if

test1 <- function(type) {
      switch(type,
             mean = 1,
             median = 2,
             trimmed = 3)
}