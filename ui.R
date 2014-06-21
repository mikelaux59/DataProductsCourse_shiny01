library(shiny);
shinyUI(pageWithSidebar(
  headerPanel("Temperature Conversion"),
  sidebarPanel(selectInput(inputId = "tempTypeSelection",
                           label = "Temperature Type",
                           choices = c("Farenheight to Celsius", 
                                       "Celsius to Farenheight"),
                           selected = 1),
               numericInput('deg', 'Degrees', 50, min = -200, max = 212, step = 1)),
  mainPanel(h4('The converted temperature is '),
            verbatimTextOutput("convertedTemp"),
            h4('degrees.')
            )
  )
  );