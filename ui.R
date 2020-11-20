# great application alsont done
library(shiny)
#  defination uai for MPG ^^^^
ui <- pageWithSidebar(
    
    # application topic ^^^^
    headerPanel("Mileage given by automobiles every gallon"),
    
     
    sidebarPanel(),
    
     
    mainPanel()
)
# different variables are ploted v/s MPG server logic is defined ^^^^
server <- function(input, output) {
# afeter all the it is    
}
library(shiny)

# defination of uai for MPG
ui <- pageWithSidebar(
    
    # application topic
    headerPanel("Mileage given by automobiles per gallon"),
    
      
    sidebarPanel(),
    
    
    mainPanel()
)

# different variables are plotted v/s MPG server logic are defined
server <- function(input, output) {
    
}
# upto you
shinyApp(ui, server)
# defination aui for MPG ^^^
ui <- pageWithSidebar(
    
    # appication topic
    headerPanel("Mileage given by automobiles per gallon"),
    
    # input panel sidebar
    sidebarPanel(
        
        # Drop down to select variable vs MPG
        selectInput("variable", "Variable:", 
                    c("Cylinders" = "cyl",
                      "Transmission" = "am",
                      "Gears" = "gear")),
        
        # This is to input the feature if checkbox is required
        checkboxInput("Outliers", "Want to see outliers", TRUE)
        
    ),
    
# yeah alsmot done    
    mainPanel()
)
# We are defining UI for MPG
ui <- fluidPage(
    
    # Topic of this Appl
    titlePanel("Mileage given by automobiles per gallon"),
    
    # Here we define the layout for sidebar with input and output definitions
    sidebarLayout(
        
        
        sidebarPanel(
            
            # Drop down to select variable vs MPG
            selectInput("variable", "Variable:",
                        c("Cylinders" = "cyl",
                          "Transmission" = "am",
                          "Gears" = "gear")),
            
            # This is to input the feature if checkbox is required
            checkboxInput("outliers", "Show outliers", TRUE)
            
        ),
        
        
        mainPanel(
            
            
            h3(textOutput("caption")),
            
            # Plot output of requested variable vs MPG ----
            plotOutput("Pompg")
 # uff wohat a rowker           
        )
    )
)
