library(shiny)
source("ui.R")
source("server.R")

shinyApp(ui = ui, server = server)

# library(rsconnect)
# laptop : rsconnect::deployApp('C:\\Users\\owenp\\Documents\\Info201code\\final-project-cactusleather')
# desktop : rsconnect::deployApp('/Users/owenpronovost/Documents/final-project-cactusleather')
