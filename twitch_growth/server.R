# Server 
server <- function(input, output, session) {
  
  output$landing <- renderImage(list(src = "www/landing_image.jpg", width = "100%"), deleteFile = F)
  output$conclusion_image <- renderImage(list(src = "www/conclusion_image.jpg", width = "100%"), deleteFile = F)
  
  output$view_pie_chart <- renderPlotly({ build_pie(input$range[1], input$range[2]) })
  
  bar_selection <- reactive(input$bar_selection)
  
  
  output$double_bar_chart <- renderPlotly({ 
    if (bar_selection() == "watched") {
      hrs_watched_bar_fig
    } else {
      hrs_streamed_bar_fig
    }
  })
  
  output$intro <- renderText(intro)
  
  output$viewership <- renderText(viewership_text)
  
  output$conclusion <- renderText(conclusion_text)
  
  output$hours <- renderText(if (bar_selection() == "watched") {
    hours_watched_text
  } else {
    hours_streamed_text
    
  })
  
  output$pie16 <- renderImage(list(src = "www/2016.jpg", width = "100%"), deleteFile = F)
  output$pie17 <- renderImage(list(src = "www/2017.jpg", width = "100%"), deleteFile = F)
  output$pie18 <- renderImage(list(src = "www/2018.jpg", width = "100%"), deleteFile = F)
  output$pie19 <- renderImage(list(src = "www/2019.jpg", width = "100%"), deleteFile = F)
  output$pie20 <- renderImage(list(src = "www/2020.jpg", width = "100%"), deleteFile = F)
  output$pie21 <- renderImage(list(src = "www/2021.jpg", width = "100%"), deleteFile = F)
  output$pie22 <- renderImage(list(src = "www/2022.jpg", width = "100%"), deleteFile = F)
  output$streamer <- renderText(twitchaff_text)
}


