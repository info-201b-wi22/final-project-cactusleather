library(ggplot2)
library(plotly)
library(dplyr)

climate_data <- read.csv("https://github.com/owid/co2-data/")

server <- function(input, output) {
  
  output$climatePlot <- renderPlotly({
    
    climate_data <- climate_data %>%  filter(country %in% input$user_category)
    
    # Make a scatter plot
    my_plot <- ggplot(data = climate_data) +
      geom_line(mapping = aes(x = year, 
                              y = oil_co2_per_capita, 
                              color= country))
    
    # Make interactive plot
    my_plotly_plot <- ggplotly(my_plot) 
    
    return(my_plotly_plot)
  })
}