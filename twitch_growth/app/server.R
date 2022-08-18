# Server 
server <- function(input, output, session) {
 
  output$landing <- renderImage(list(src = "www/landing_image.jpg", width = "100%"), deleteFile = F)
}
