Different Approaches for Creating Demographics Tables
=======================

`gtsummary::tbl_summary()`
--------------------------------

* Purpose: Create a table with three variables (gender, race, & ethnicity) for manuscript
* Logic: Leverage the capabilities build into [`gtsummary::tbl_summary()`](https://www.danieldsjoberg.com/gtsummary/articles/tbl_summary.html)
* Last reviewed date: 2023-10-16 by Andrew Peters
* Example projects:
  * [bergner-human-milk-3, analysis-3.Rmd](https://github.com/OuhscBbmc/bergner-human-milk-3/tree/main/analysis/analysis-3)

Code:

```r
# Creating data set to work on

# sex       <- sample(c("female", "male")                                             , size = 1000, replace = TRUE, prob = c(0.5, 0.5)           )
# ethnicity <- sample(c("Hispanic", "Not Hispanic")                                   , size = 1000, replace = TRUE, prob = c(0.3, 0.7)           )
# race      <- sample(c("Asian", "African American" , "Native American", "Caucasian") , size = 1000, replace = TRUE, prob = c(0.2, 0.3, 0.1, 0.4) )
# 
# ds_sample <-
#   cbind(
#     sex,
#     ethnicity,
#     race
#   ) |> 
#   as.data.frame()

# Creating tables
table_1 <-
  ds_sample |> 
  gtsummary::tbl_summary() |> 
  gtsummary::bold_labels()

table_2 <-
  ds_sample |> 
  gtsummary::tbl_strata(
    strata = ethnicity,
    
    .tbl_fun = ~ .x |> 
      gtsummary::tbl_summary(
        by = sex,
        
        type = list(everything() ~ "categorical"),
        
        statistic = list(everything() ~ "{p}% ({N_obs})")
      )
  ) |> 
  gtsummary::bold_labels()

table_1
table_2

```
