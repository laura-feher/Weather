#'Rank monthly and annual temperatures and precipitation based on historical
#'averages
#'
#' @param test_season string; the season ("winter", "spring", "summer", or
#'  "fall") or entire year ("year") to be ranked.
#' @param test_state string; capitalized 2 letter state abbreviation that each
#'  park is located in.
#' @param test_county string; county name that each park is located in (e.g.,
#'  "Barnstable County").
#' @param test_date string; the year to get ranks for.
#'
#' @returns A invisibly returns a list with the average seasonal or annual
#'  temperature or precipitation and ranks compared to historical data.
#'
#' @import dplyr
#'
#' @export
#'
#' @examples
#' ranking_results <- mapply(
#'   get_ranks,
#'   "winter",
#'   "MD",
#'   "Worcester County",
#'   "2025",
#'   SIMPLIFY = FALSE) %>%
#'bind_rows()
#'
get_ranks <- function(test_season, test_state, test_county, test_date) {
  
  ranks_new <- ranks_data %>%
    filter(season == test_season,
           state_abr == test_state,
           county == test_county) %>%
    group_by(concat_ID) %>%
    mutate(rank_t_coldest = rank(value_t, ties.method = rank_method_t_c[which(date == test_date)]),
           rank_t_warmest = rank(-value_t, ties.method = rank_method_t_w[which(date == test_date)]),
           rank_p_driest = rank(value_p, ties.method = rank_method_p_d[which(date == test_date)]),
           rank_p_wettest = rank(-value_p, ties.method = rank_method_p_w[which(date == test_date)])) %>%
    filter(date == test_date)
  
}