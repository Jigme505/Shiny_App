library(shiny)

combination <- function(n,r) choose(n,r)

shinyServer(
  function(input, output) {
    c <- eventReactive(input$goButton, {
      combination(input$n,input$r)
    })
    output$n <- renderPrint({input$n})
    output$r <- renderPrint({input$r})
    output$a <- renderText({c()})
  }
)