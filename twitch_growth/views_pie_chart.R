library(plotly)
library(stringr)
library(dplyr)

twitch_df <- read.csv('data/data.csv')

get_views <- function(yr) {
  
  views_df <- twitch_df %>% filter(str_detect(twitch_df$Month, yr))
  views_df <- views_df$Average.viewers
  return(sum(views_df))
  
}

build_pie <- function(start_yr, end_yr) {
  
  start_year_str <- paste(toString(start_yr))
  end_yr_str <- paste(toString(end_yr))
  
  hours_watched <- c()
  Year <- c()
  
  for (i in start_yr:end_yr) {
    hours_watched <- c(hours_watched, get_views(paste(toString(i))))
    Year <- c(Year, paste(toString(i)))
  }
  
  data <- data.frame(Year, hours_watched)
  
  pie_chart <- plot_ly(data, labels = ~Year, values = ~hours_watched,
                       type = 'pie', 
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       text = ~paste(signif(hours_watched / 1000000, 4), 'million average viewers'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)))
  
  custom_title <- paste0('Share of Total Average Views by Year from ', start_year_str, ' to ', end_yr_str)
  
  pie_chart <- pie_chart %>% layout(title = custom_title,
                                    xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                    yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  
  return(pie_chart)
  
}

