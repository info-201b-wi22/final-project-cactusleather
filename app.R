library(shiny)
source("ui.R")
source("server.R")

shinyApp(ui = ui, server = server)

library(rsconnect)
rsconnect::deployApp('C:\\Users\\owenp\\Documents\\Info201code\\final-project-cactusleather')