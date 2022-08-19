library(shiny)
library(shinydashboard)
library(shinythemes)
library(tidyverse)
library(shinyWidgets)
library(plotly)
library(bslib)

source('twitch_growth/app/double_bar_chart.R')
source('twitch_growth/app/views_pie_chart.R')

ui <- fluidPage(
  
  navbarPage( "The Growth of Twitch",
  
    theme = bs_theme(bootswatch = "darkly"),
    
    inverse = TRUE,
    
    #Home Page Panel
    tabPanel("Home",
          
      fluidRow(width = 12, hr(), hr(),
        
        imageOutput("landing",
                    
          width = "100%",
          height = "10%"
          
        )
        
      )     
             
    ),
    
    tabPanel("Hours Watched",

      selectInput("bar_selection",
                  
        label = "Hour Type",
        choices = c("Watched Hours" = "watched",
                    "Streamed Hours" = "stream")
      ),   
      
      mainPanel(plotlyOutput("double_bar_chart"))
             
    ),
    
    tabPanel("Viewership",
             
      sidebarLayout(
               
        sidebarPanel(
                 
          sliderInput("range", 
            label = "Years of interest:",
            min = 2016, max = 2022, value = c(2018, 2020)
          )
                 
        ),
               
        mainPanel(plotlyOutput("view_pie_chart"))
               
     ) 
             
    ),
    
    tabPanel("Streamers",
             
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
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Plot", plotOutput(outputId = "1year")),
          tabPanel("Table", tableOutput(outputId = "2year"))
        )             
      )
  )
)
