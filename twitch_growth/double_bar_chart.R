#Double Bar Chart

library (dplyr)
library(plotly)
library(stringr)

twitch_df <- read.csv("data/data.csv")

# Generating the plot for total hours watched.
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

year_growth_front <- c(signif(get_hours_watched("2017", 0), 4),
                       signif(get_hours_watched("2018", 0), 4),
                       signif(get_hours_watched("2019", 0), 4),
                       signif(get_hours_watched("2020", 0), 4),
                       signif(get_hours_watched("2021", 0), 4))

year_growth_back <- c(signif(get_hours_watched("2017", 1), 4),
                      signif(get_hours_watched("2018", 1), 4),
                      signif(get_hours_watched("2019", 1), 4),
                      signif(get_hours_watched("2020", 1), 4),
                      signif(get_hours_watched("2021", 1), 4))

Year <- c(2017, 2018, 2019, 2020, 2021)

data <- data.frame(Year, year_growth_front, year_growth_back)

hrs_watched_bar_fig <- plot_ly(data, x = ~Year, y = ~year_growth_front, type = 'bar', name = 'Front Half (January-June)')
hrs_watched_bar_fig <- hrs_watched_bar_fig %>% add_trace(y = ~year_growth_back, name = 'Back Half (July-December)')
hrs_watched_bar_fig <- hrs_watched_bar_fig %>% layout(yaxis = list(title = 'Hours Watched'), barmode = 'group')




# Generating the plot for hours streamed.
get_hrs_streamed <- function(yr, type) {
  
  hours_streamed_df <- twitch_df %>% filter(str_detect(twitch_df$Month, yr))
  hours_streamed_df <- hours_streamed_df$Hours.streamed..mins. / 60
  
  if (type == 0) {
    hours_streamed_df <- head(hours_streamed_df, 6)
  } else {
    hours_streamed_df <- tail(hours_streamed_df, 6)
  }
  return(sum(hours_streamed_df))
}

hrs_streamed_growth_front <- c(signif(get_hrs_streamed("2017", 0), 4),
                               signif(get_hrs_streamed("2018", 0), 4),
                               signif(get_hrs_streamed("2019", 0), 4),
                               signif(get_hrs_streamed("2020", 0), 4),
                               signif(get_hrs_streamed("2021", 0), 4))

hrs_streamed_growth_back <- c(signif(get_hrs_streamed("2017", 1), 4),
                              signif(get_hrs_streamed("2018", 1), 4),
                              signif(get_hrs_streamed("2019", 1), 4),
                              signif(get_hrs_streamed("2020", 1), 4),
                              signif(get_hrs_streamed("2021", 1), 4))

data <- data.frame(Year, hrs_streamed_growth_front, hrs_streamed_growth_back)

hrs_streamed_bar_fig <- plot_ly(data, x = ~Year, y = ~hrs_streamed_growth_front, type = 'bar', name = 'Front Half (January-June)')
hrs_streamed_bar_fig <- hrs_streamed_bar_fig %>% add_trace(y = ~hrs_streamed_growth_back, name = 'Back Half (July-December)')
hrs_streamed_bar_fig <- hrs_streamed_bar_fig %>% layout(yaxis = list(title = 'Hours Streamed'), barmode = 'group')
