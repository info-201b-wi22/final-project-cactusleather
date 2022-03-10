library(ggplot2)
library(plotly)
library(dplyr)
library(stringr)

data <- read.csv("birds_arent_real_tweets.csv")

server <- function(input, output) {
  
  output$plot_1 <- renderPlotly({
    data_1 <- data %>% filter(source %in% input$user_category_1)
    data_1 <- data_1 %>% mutate(date = as.Date(strtrim(date, 10))) %>% group_by(date, source) %>% summarize(tweets = sum(n()))
    plot_1 <- ggplot(data = data_1) +
      geom_point(aes(x = date, y = tweets, color = source)) + 
      labs(title = "Related Tweets by Date", x = "Date", y = "Tweets", color = "Source") + 
      scale_x_date(breaks = as.Date(c("2021-12-09", "2021-12-16", "2021-12-23", "2021-12-30", "2022-01-06", "2022-01-13", "2022-01-20"))) + 
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
    plotly_1 <- ggplotly(plot_1) 
    
    return(plotly_1)
  })
  
  output$plot_2 <- renderPlotly({
    data_2 <- data %>% filter(source %in% input$user_category_2)
    data_2 <- data_2 %>% filter(retweets > 1)
    plot_2 <- ggplot(data = data_2) + 
      geom_histogram(aes(x = retweets, color = source), binwidth = 1) + 
      labs(title = "'Birds Aren't Real'-Related Retweets (Retweets > 1)", x = "Retweets", y = "Count", color = "Source")
    plotly_2 <- ggplotly(plot_2)
    
    return(plotly_2)
  })
  
  output$plot_3 <- renderPlotly({
    data_3 <- data %>% filter(source %in% input$user_category_3)
    data_3 <- data_3 %>% distinct(user_name, .keep_all = TRUE) %>% mutate(user_location = str_trim(user_location)) %>% group_by(user_location, source) %>% summarize(count = sum(n())) %>% arrange(desc(count))
    data_3 <- data_3[c(2:21), ]
    plot_3 <- ggplot(data = data_3) +
      geom_col(aes(x = user_location, y = count, color = source)) + 
      labs(title = "'Birds Aren't Real' Movement Hotspots", x = "Location", y = "Count", color = "Source") + 
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
    plotly_3 <- ggplotly(plot_3)
    
    return(plotly_3)
  })
}