library(caret)
library(shiny) 
library(RCurl) 
Potato <- read.csv("Potato2.csv",header = TRUE, sep = ",")
modFit <- train(AdjClose  ~ Date + High +  Close, method="glm", data=Potato) 
shinyServer( 
  function(input, output) {  
    output$prediction <- renderPrint ({ 
       Date = input$Date
       High = input$High
       Close = input$Close
       predict(modFit,data.frame(Date,High,Close))}) 
   } 
 ) 