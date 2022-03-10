library(ggplot2)
library(plotly)
library(dplyr)

data <- read.csv("birds_arent_real_tweets.csv")

server <- function(input, output) {
  
  output$plot_1 <- renderPlotly({
    data_1 <- data %>% filter(source %in% input$user_category_1)
    data_1 <- data_1 %>% mutate(date = as.Date(strtrim(date, 10))) %>% group_by(date) %>% summarize(tweets = sum(n()), source = source)
    # Note: problem here with "tweets = sum(n())", it adds up all values and combines them into one single value used for the graph. Unsure how to fix this just yet.
    plot_1 <- ggplot(data = data_1) +
      geom_point(aes(x = date, y = tweets, color = source)) + 
      labs(title = "Related Tweets by Date", x = "Date", y = "Tweets", color = "Source") + 
      scale_x_date(breaks = as.Date(c("2021-12-09", "2021-12-16", "2021-12-23", "2021-12-30", "2022-01-06", "2022-01-13", "2022-01-20"))) + 
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
    plotly_1 <- ggplotly(plot_1) 
    
    return(plotly_1)
  })
  
  output$plot_2 <- renderPlotly({
    
    
  })
}