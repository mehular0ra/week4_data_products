library(shiny)
library(datasets)

# asdhgdhggek googel hello i am the google
DatMPG <- mtcars

#up to you common carup
DatMPG$am <- factor(DatMPG$am, labels = c("Automatic", "Manual"))

#aldsomtio done gee souuprt
shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("mpg ~", input$variable)
    })
 # yeepp yeah done   
    formulaTextPoint <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    fit <- reactive({
        lm(as.formula(formulaTextPoint()), data=DatMPG)
    })
 # thrid last fingure   
    output$caption <- renderText({
        formulaText()
    })
    
    output$BPmpg <- renderPlot({
        boxplot(as.formula(formulaText()), 
                data = DatMPG,
                outline = input$outliers)
    })
    # sedond last fingrure
    output$f <- renderPrint({
        summary(fit())
    })
    # hoperfully lsat
    output$Pompg <- renderPlot({
        with(DatMPG, {
            plot(as.formula(formulaTextPoint()))
            abline(fit(), col=2)
        })
    })
    # yeah its the last
})
# great work almost done cool work
