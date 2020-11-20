library(shiny)
library(datasets)

DatMPG <- mtcars
DatMPG$am <- factor(DatMPG$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("mpg ~", input$variable)
    })
    
    formulaTextPoint <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    fit <- reactive({
        lm(as.formula(formulaTextPoint()), data=DatMPG)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    
    output$BPmpg <- renderPlot({
        boxplot(as.formula(formulaText()), 
                data = DatMPG,
                outline = input$outliers)
    })
    
    output$f <- renderPrint({
        summary(fit())
    })
    
    output$Pompg <- renderPlot({
        with(DatMPG, {
            plot(as.formula(formulaTextPoint()))
            abline(fit(), col=2)
        })
    })
    
})
