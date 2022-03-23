#' Numeric Correlation Matrix Function
#'
#' This function allows you to find the correlation between all the numeric values for a given year.
#' @param year the year for which you want to know the correlation for the numeric values.
#' @keywords correlation matrix
#' @export
#' @examples
#' numeric_corr_matrix()


numeric_corr_matrix=function(year){
  new_df= nba %>% group_by(Year=year) %>%
    select_if(is.numeric)
  x=na.omit(new_df)
  return(cor(x))
}
