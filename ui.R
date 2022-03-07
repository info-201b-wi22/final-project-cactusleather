library(ggplot2)
library(plotly)
library(bslib)

climate_data <- read.csv("https://github.com/owid/co2-data/")

intro_tab <- tabPanel(
  "Introduction",
  fluidPage(theme = bs_theme(bootswatch = "cerulean"),
            p("Hi. This is an App")
  )
)


plot_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category",
    label = "Select Country",
    choices = climate_data$country,
    selected = "United States",
    multiple = TRUE)
)

plot_main <- mainPanel(
  plotlyOutput(outputId = "climatePlot")
)

plot_tab <- tabPanel(
  "Plot",
  sidebarLayout(
    plot_sidebar,
    plot_main
  )
)


ui <- navbarPage(
  "Climate Change",
  intro_tab,
  plot_tab
)