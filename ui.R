shinyUI(fluidPage(
        titlePanel("Body Mass Index Calculator"),
        
        sidebarLayout(sidebarPanel(
                
                helpText("Body Mass Index (BMI) is a simple index of weight-for-height that is commonly used to classify underweight, overweight and obesity in adults. It is defined as the weight in kilograms divided by the square of the height in metres (kg/m2)."),
        
                radioButtons(
                        inputId  = "units",
                        label    = "Units:",
                        choices  = c("Metric (kg & m)" = 1, "Imperial (lb & in)" = 2),
                        selected = 1
                ),
                
                numericInput(
                        inputId = "mass",
                        label = strong("Your weight:"),
                        value = 77
                ),
                
                numericInput(
                        inputId = "height",
                        label = strong("Your height:"),
                        value = 1.76,
                        step  = 0.01
                )
        ),
        
        mainPanel(
                uiOutput("input"),
                uiOutput("result"),
                uiOutput("graph"),
                uiOutput("fork")
        ))
))
