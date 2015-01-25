library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("compound interest demo"),
  sidebarPanel(
    numericInput('startAmount', 'Numeric input, initial amount in savings', 10000, min = 0, max = 100000, step = 10),
    numericInput('numYears','Number of years for compounding', 7, min=0, max=100, step=.125),
    sliderInput('interest', 'Select an interest rate',value = 3.5, min = -60, max = 80, step = .1,)
  ),
  mainPanel(
    h4('Your savings will be'),
    verbatimTextOutput("savings")
  )
))
