library(shiny)
library(shinythemes)
library(tidyverse)
library(shinyWidgets)
library(plotly)
library(bslib)


# UI -------------------------------

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
             
      sidebarLayout(
        sidebarPanel(
          helpText("Select a timeframe."),
                 
            sliderInput("range", 
                      label = "Range of interest:",
                      min = 0, max = 100, value = c(0, 100))),
               
               mainPanel(plotOutput("map"))
               
             )         
             
             
    ),
    
    tabPanel("Viewership"
             
             
             
             
    ),
    
    tabPanel("Streamers"
             
             
             
             
             
    )
    
  )
  
)
