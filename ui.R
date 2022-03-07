library(ggplot2)
library(plotly)
library(bslib)

climate_data <- read.csv("")

intro_tab <- tabPanel(
  "Introduction",
  fluidPage(theme = bs_theme(bootswatch = "lumen"),
  )
)

plot_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category",
    label = 'label',
    choices = c("choices", "choices"),
    selected = "choices",
    multiple = TRUE)
)

plot_main <- mainPanel(
  plotlyOutput(outputId = "")
)

chart_tab1 <- tabPanel(
  "Chart 1",
  sidebarLayout(
    plot_sidebar,
    plot_main
  ),
  fluidPage(),

)

chart_tab2 <- tabPanel(
  "Chart 2",
  sidebarLayout(
    plot_sidebar,
    plot_main
  ),
  fluidPage(),
  
)

chart_tab3 <- tabPanel(
  "Chart 3",
  sidebarLayout(
    plot_sidebar,
    plot_main
  ),
  fluidPage(),
  
)

conclusion_tab <- tabPanel(
  "Conclusion",
  fluidPage()
)

ui <- navbarPage(
  "Climate Data",
  intro_tab,
  chart_tab1,
  chart_tab2,
  chart_tab3,
  conclusion_tab
)