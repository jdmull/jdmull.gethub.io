## This app was based on the galton lecture example
library(shiny)
library(UsingR)

shinyServer(
  function(input, output) {
      output$savings <- renderPrint({input$startAmount*((100+input$interest)/100)^input$numYears})    
  }
)
