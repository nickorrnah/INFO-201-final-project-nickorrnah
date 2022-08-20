# Server 
server <- function(input, output) {
  
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
  
  output$conclusion_text <- renderText(conclusion_text)
  
  output$hours <- renderText(if (bar_selection() == "watched") {
    hours_watched_text
  } else {
    hours_streamed_text
    
  })
  
}
