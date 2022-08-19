library(shiny)
library(plotly)
library(dplyr)
library(tidyverse)

twitchdf <- read.csv("twitch.csv")

activepartners <- twitchdf$Active.partners

activeaff <- twitchdf$Active.affiliates

freeagents <- twitchdf$Peak.channels

total <- c(activepartners, activeaff, freeagents)/ 12

Year <- twitchdf$Year


ui <- fluidPage(
  h1("Twitch Channel Affiliation Status"),
      selectInput(
        inputId = "year1",
        label = "Select first year",
        choices = twitchdf$Year
      ),
      selectInput(
        inputId = "year2",
        label = "Select second year",
        choices = twitchdf$Year
      )
    )
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput(outputId = "1year")),
        tabPanel("Table", tableOutput(outputId = "2year"))
      )
    )
  






getdata <- function(yr){
  totaldf <- twitchdf %>% filter(str_detect(twitchdf$Year == yr))
  totaldf <- totaldf$total /12
  return(totaldf)
}


server <- function(input, output){

  pie <- function(year){
    data_pt <- filter(twitchdf, Year == input$year1)
    data_pt <- select(data_pt,  (total))
    
  }
}


 
shinyApp(ui = ui, server = server)
