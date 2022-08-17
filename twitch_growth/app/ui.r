# UI code

ui <- fluidPage(
  theme = "twitch_quartz",
  tags$style(type = "text/css",
             "h1, h2, h3, h4 { text-align: center; }",
             "p { text-align: center; color: grey; }",
             "hr { margin-top: 2em; margin-bottom: 2em; }",
             "#children_madlib { color: white; }"),
  
  navbarPage("The Rise of Twitch",
             id = "main",
             collapsible = T, position = "fixed-top",
             
             # Tab panel: home -----------------
             tabPanel("Home",
                      fluidRow(width = 12, hr(), hr(),
                               imageOutput("landing",
                                           width = "99%",
                                           height = "90%",
                                           click = "landing_cl"))),
             
             # Tab panel: TODO1
             tabPanel("TODO 1",
                      value = "tab1", hr(), hr(),
                      
                      
                      ),
             
             # Tab panel: TODO2
             tabPanel("TODO 2",
                      value = "tab2",hr(),hr(),
                      
                      ),
             
             
             # Tab panel: TODO3
             tabPanel("TODO 3",
                      value = "tab3", hr(), hr(),
                      
                      ),
             
             # Tab panel: summary
             tabPanel("Summary",
                      value = "sum", hr(), hr(),
                      
                      )
  )
)
