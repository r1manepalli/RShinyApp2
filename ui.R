library(caret) 
library(shiny) 

 shinyUI ( 
   pageWithSidebar ( 
     # Application title 
     headerPanel ("This is a Prediction of Adjusted Close Price of the Potato Company"), 
      
     sidebarPanel ( 
       numericInput('Date', 'Date', 20150925, min = 20000925, max= 20250925, step = 1), 
       numericInput('High', 'High', 40, min = 35, max= 5000, step = 1), 
       numericInput('Close', 'Close', 40, min = 35, max= 5000, step = 1), 
       submitButton('Submit') 
       ), 
     mainPanel ( 
       h4 ('Please enter high and Close price within a range 35 thru 5000 for a given day'),
       h4 ('Please Note: The date format is yyyymmdd'), 
       h4 ('The Predicted Adjusted Close Price of Potato'), 
       h4 ('Stock Price:'), 
       textOutput("prediction") 
       ) 
     ) 
 
 ) 