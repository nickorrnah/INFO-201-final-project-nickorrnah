#Double Bar Chart

library (dplyr)
library(plotly)
library(stringr)

twitch_df <- read.csv("data/data.csv")


get_hours_watched <- function(yr) {
  hours_watched_df <- twitch_df %>% filter(str_detect(twitch_df$Month, yr))
  hours_watched_df <- hours_watched_df$Hours.watched..mins. / 60
  return(sum(hours_watched_df))
}


year_growth <- c((get_hours_watched("2017") - get_hours_watched("2016")) / (get_hours_watched("2016") * 100), 
                 (get_hours_watched("2018") - get_hours_watched("2017")) / (get_hours_watched("2017") * 100),
                 (get_hours_watched("2019") - get_hours_watched("2018")) / (get_hours_watched("2018") * 100), 
                 (get_hours_watched("2020") - get_hours_watched("2019")) / (get_hours_watched("2019") * 100),
                 (get_hours_watched("2021") - get_hours_watched("2020")) / (get_hours_watched("2020") * 100), 
                 (get_hours_watched("2022") - get_hours_watched("2021")) / (get_hours_watched("2021") * 100))

years <- c(2017, 2018, 2019, 2020, 2021, 2022)

data <- data.frame(years, year_growth)

data$years <- factor(data$years, levels = data[["years"]])

fig <- plot_ly(data, x = ~years, y = ~year_growth, name = 'Year over Year growth', type = 'scatter', mode = 'lines',
               line = list(color = 'rgb(205, 12, 24)', width = 4)) 

fig <- fig %>% layout(title = "Hours Streamed and Watched by Month",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "Hours (millions)"))