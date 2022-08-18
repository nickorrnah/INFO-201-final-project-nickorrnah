#Double Bar Chart

library (dplyr)
library(plotly)
library(stringr)

twitch_df <- read.csv("twitch_growth/data/data.csv")


get_hours_watched <- function(yr, type) {
  hours_watched_df <- twitch_df %>% filter(str_detect(twitch_df$Month, yr))
  hours_watched_df <- hours_watched_df$Hours.watched..mins. / 60
  
  if (type == 0) {
    hours_watched_df <- head(hours_watched_df, 6)
  } else {
    hours_watched_df <- tail(hours_watched_df, 6)
  }
  return(sum(hours_watched_df))
}

year_growth_front <- c(get_hours_watched("2017", 0),
                       get_hours_watched("2018", 0),
                       get_hours_watched("2019", 0),
                       get_hours_watched("2020", 0),
                       get_hours_watched("2021", 0))

year_growth_back <- c(get_hours_watched("2017", 1),
                      get_hours_watched("2018", 1),
                      get_hours_watched("2019", 1),
                      get_hours_watched("2020", 1),
                      get_hours_watched("2021", 1))

Year <- c(2017, 2018, 2019, 2020, 2021)

data <- data.frame(years, year_growth_front, year_growth_back)

bar_fig <- plot_ly(data, x = ~Year, y = ~year_growth_front, type = 'bar', name = 'Front Half (January-June)')
bar_fig <- bar_fig %>% add_trace(y = ~year_growth_back, name = 'Back Half (July-December)')
bar_fig <- bar_fig %>% layout(yaxis = list(title = 'Hours Watched'), barmode = 'group')