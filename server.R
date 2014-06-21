library(shiny)

conversionFunc <- function(convType, deg) {
  if (convType == "Farenheight to Celsius") 
  {
    (5.0/9.0) * (deg - 32.0);
  }
  else
  {
    deg* (9.0/5.0) + 32.0;
  }
}

shinyServer(
  function(input, output) { output$convertedTemp <- renderPrint(conversionFunc(input$tempTypeSelection,
    input$deg)); }
  )