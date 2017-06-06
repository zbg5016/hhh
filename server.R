library(shiny)
shinyServer(function(input,output){
  output$distPlot <- renderPlot({
    # Generate the random normal distribution with 100 points and the input mean and sd

    #bins<-seq(min(x),max(x),length.out = input$bins+1)
    z = rnorm(input$bins, mean=input$average, 
              sd=input$spread)
    
    # Generate a normalized Gaussian with 200 points and  the input mean and sd
    x=seq(from=-50, to=50, length=input$bins)
    gauss=1/(sqrt(2*pi)*input$spread)*exp(-((x - input$average)^2/(2*input$spread^2)))
    
    # Draw the histogram and overlay the Gaussian
    hist(z, breaks=input$bins, xlim=c(-50,50), col='darkgray',border='white',
         prob="TRUE",
         main="Histogram of a normal distribution")
    lines(x,gauss, col="blue")
  })
  
})

