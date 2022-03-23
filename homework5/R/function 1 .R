#' LeBron James Points function
#'
#' This function allows you to know how many points LeBron James scored for any given year.
#' @param year the year you want to know about
#' @keywords LeBron James
#' @export
#' @examples
#' count_pts_LeBron()

count_pts_LeBron =function(year){
  nba %>% filter(Player=="LeBron James",Year==year)  %>% select(PTS)}
