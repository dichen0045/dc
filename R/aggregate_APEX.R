

#' @title aggregate_APEX
#'
#' @description Apex Result aggregate using a list of variable
#'
#' @param result_APEX Apex result
#' @param group_by_vars variable need to be aggregated
#'
#' @return aggregated APEX result
#' @import dplyr
#'
#' @export




aggregate_APEX <- function(result_APEX, group_by_vars){


column_approved <- intersect(names(result_APEX),group_by_vars)

aggregat_apex <- result_APEX %>%
  mutate(Count=1) %>%
  group_by_at(vars(one_of(column_approved))) %>%
  summarise_at(vars(starts_with(c("Exposure_Amount", "Exposure_count", "Exposure_Premium", "Actual_Amount",
                                  "Actual_Count", "Expected_Amount", "Expected_count", "Expected_Premium",
                                  "Count"))), sum)


  return(aggregat_apex)

}





