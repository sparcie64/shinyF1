library(shiny)
library(tidyverse)
bcl <- read.csv("bcl-data.csv")

ui <- fluidPage(
  titlePanel("TEST-BC Liquor Store prices"),
  sidebarLayout(
    sidebarPanel(
      selectInput("typeInput", "Product type",
                  choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),
                  selected = "WINE"),
      radioButtons("Country", "Land",
                   choices = c("CANADA", "UNITED STATES OF AMERICA", "FRANCE", "ITALY", "IRELAND")
      ), 
      sliderInput("priceInput", "Price",0, 100, c(25,40)),
    ),
    mainPanel(
      tableOutput("results"),
      plotOutput("alcPlot")
    )
  )
)

server <- function(input, output) {
  output$results <- renderTable({
    bcl %>%
      filter( Type == input$typeInput,
              Country == input$Country,
              Price >= input$priceInput)
  })
}

shinyApp(ui = ui, server = server)

