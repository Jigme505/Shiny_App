library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Combinatorial Calculator: nCr"),
  sidebarPanel(
    numericInput('n', 'Numeric input: n', 0, min = 0, max = 1000, step = 1),
    numericInput('r', 'Numeric input: r', 0, min = 0, max = 1000, step = 1),
    
    actionButton("goButton", "Go!"),
    p("Click the button to get your answer.")
  ),
  mainPanel(
    h3('Results: nCr'),
    h4('n='),
    verbatimTextOutput("n"),
    h4('r='),
    verbatimTextOutput("r"),
    h4('Answer:'),
    verbatimTextOutput("a"),
    tabsetPanel(
      tabPanel('Documentation: How to Use the combinatorial calculator?',
               h5('It is exactly like we learned it in highschool math
                  class. We have n objects and we want to know how many
                  ways are there to choose r objects from n objects.
                  Hence we say "n choose r" or simply nCr. 
                  
                  To use this calculator, you will have to input the n-value
                  and the r-value you want and press GO! button that will 
                  give you your answer. :)')
      )
    )
  )
))


