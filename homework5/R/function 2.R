#' Oldest Player function
#'
#' This function allows you to
#' @param year the year for which you want to know the oldest player
#' @keywords Oldest player
#' @export
#' @examples
#' oldest_player()

oldest_player =function(year){
  nba %>% select(Year,Age,Player) %>%
    group_by(Year=year) %>% slice(which.max(Age))}

