library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert your weight in kilograms', 75) ,
      numericInput('height', 'Insert your height in metres', 2, min = 0.2, max = 3, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women as defined by the National Institute of Health (NIH).
'),
      p('The BMI is used in a wide variety of contexts as a simple method to assess how much an individuals body weight departs from what is normal or desirable for a person of his or her height. There is however often vigorous debate, particularly regarding at which value of the BMI scale the threshold for overweight and obese should be set, but also about a range of perceived limitations and problems with the BMI. (Wikipedia)'),
      p('The World Health Organization (WHO) proposes the following classification for BMI values'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI (18.5-24.9) : Normal weight'),
          tags$li('BMI (25-29.9)   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('Based on the values entered by you:'), 
      p('Weight:'), verbatimTextOutput("inputweightvalue"),
      p('Height:'), verbatimTextOutput("inputheightvalue"),
      h4('Your BMI is :'),
      verbatimTextOutput("estimation"),
      p('You are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)