library(ggplot2)
library(plotly)
library(bslib)

climate_data <- read.csv("the data")

intro_tab <- tabPanel(
  "Intro",
  fluidPage(theme = bs_theme(bootswatch = "theme"),
            p("Hi. This is an App")
  )
)


plot_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category",
    label = "label",
    choices = climate_data$country,
    selected = "default",
    multiple = TRUE)
)

plot_main <- mainPanel(
  plotlyOutput(outputId = "plot")
)

plot_tab <- tabPanel(
  "Plot",
  sidebarLayout(
    plot_sidebar,
    plot_main
  )
)


ui <- navbarPage(
  "title",
  intro_tab,
  plot_tab
)