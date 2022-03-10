library(ggplot2)
library(plotly)
library(dplyr)

# data <- read.csv("data goes here")

server <- function(input, output) {
  
  output$plot <- renderPlotly({
    
#     data <- data %>%  filter( %in% input$user_category)
    my_plot <- ggplot(data = data) +
      geom_line(mapping = aes(x = , 
                              y = , 
                              color= ))
    my_plotly_plot <- ggplotly(my_plot) 
    
    return(my_plotly_plot)
# code for interactive plot
  })
}