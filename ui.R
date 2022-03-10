library(ggplot2)
library(plotly)
library(bslib)

intro_tab <- tabPanel(
  "Introduction",
  fluidPage(includeCSS("style.css"), theme = bs_theme(bootswatch = "lumen"),
  h3("Here's the Context:"),
  p("A significant number of members of Generation Z actively propagate 
    (as a joke or seriously) the myth that birds doesn't exist anymore, 
    because they were gradually replaced by the government with drones. 
    These drones perform, in this conspiracy theory, surveillance of 
    the citizens. Our group studied how much bot activity contributes 
    to the spread of conspiracy theories like these. The rise of social 
    media (namely, Twitter) brought about the rapid development and 
    circulation of misinformation, which are threats to public interests, 
    safety, and security at times. We aim to analyze data collected from 
    Twitter that discusses the well-known parody conspiracy theory - the 
    Birds Aren't Real movement."),
  img(src = "https://religion.ua.edu/blog/wp-content/uploads/sites/2/2022/02/billboard-BAR.jpeg"),
  p("Twitter has suffered from unwelcome bot accounts and activity since 
    its inception. To the untrained eye, they may appear as reliable 
    accounts owned and ran by an actual human. The effects these bots 
    have range from funny when easily noticed to outright dangerous, 
    particularly if the bot is spreading believable disinformation. As a 
    recent example of this, in May 2020 a group of researchers conducted 
    a and discovered that up to 45% of COVID-19 related tweets were from 
    accounts that behaved like bots. These bot accounts were spreading vast 
    amounts of disinformation that had real-world consequences. The risk these 
    bots pose for maintaining the spread of accurate information cannot be 
    understated; as such, researching the frequency of bot posts on various 
    \"hot topics\" is critical to ensuring that the average post about those 
    topics is accurate and reliable."),
  p("On a significantly more light-hearted topic than COVID-19, the \"Birds 
  Aren't Real\" conspiracy theory claims that the U.S. government has gradually 
  replaced birds with drone mimics, which are used by the NSA (or another 
  government agency, depending on the theorist) to conduct surveillance on U.S. 
  citizens. The primary goal of this study is to identify the percentage of posts 
  related to the \"Birds Aren't Real\" conspiracy that are posted by bot accounts. 
  The resulting percentage could be telling of the presence of 
  disinformation-spreading bots on Twitter as a whole. Additional points of 
  research include any potential location trends and date trends - that is, when 
  the conspiracy theory had a stronger/weaker presence online."),
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
  "BIRDS.",
  intro_tab,
  chart_tab1,
  chart_tab2,
  chart_tab3,
  conclusion_tab
)