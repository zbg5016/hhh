# library(shiny)
shinyUI(fluidPage(
  titlePanel("Normal Distribution"),
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(h2("Choose your own normal distribution"),
                 helpText("Use the sliders above to choose the normal distribution",
                          "average value and its standard deviation."),
                 
                 sliderInput("average",
                             "Center of the Distribution:",
                             min = -10,
                             max = 10,
                             value = 0),
                 
                 sliderInput("spread",
                             "Standard Deviation:",
                             min = 1,
                             max = 25,
                             value = 5),
                 sliderInput("bins",
                             "Number of samplesize:",
                             min=20,
                             max = 70,
                             value=50)
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )))
