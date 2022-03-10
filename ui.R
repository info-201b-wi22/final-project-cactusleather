library(ggplot2)
library(plotly)
library(bslib)

intro_tab <- tabPanel(
  "Introduction",
  fluidPage(includeCSS("style.css"), theme = bs_theme(bootswatch = "lumen"),
  tags$h3("Here's the Context:"),
  tags$p("A significant number of members of Generation Z actively propagate 
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
  tags$img(src = "https://religion.ua.edu/blog/wp-content/uploads/sites/2/2022/02/billboard-BAR.jpeg"),
  tags$h3("How This Relates to Bots:"),
  tags$p("Twitter has suffered from unwelcome bot accounts and activity since 
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
  tags$p("On a significantly more light-hearted topic than COVID-19, the \"Birds 
  Aren't Real\" conspiracy theory claims that the U.S. government has gradually 
  replaced birds with drone mimics, which are used by the NSA (or another 
  government agency, depending on the theorist) to conduct surveillance on U.S. 
  citizens. The primary goal of this study is to identify the percentage of posts 
  related to the \"Birds Aren't Real\" conspiracy that are posted by bot accounts. 
  The resulting percentage could be telling of the presence of 
  disinformation-spreading bots on Twitter as a whole. Additional points of 
  research include any potential location trends and date trends - that is, when 
  the conspiracy theory had a stronger/weaker presence online."),
  tags$h3("Ethical Concerns, and Limitations of the Data:"),
  tags$p("The Birds Aren't Real parody conspiracy theory highlights the 
         prevalence of Twitter bot misinformation in a world where data is 
         abundant, but not regulated for accuracy. Studying this dataset may 
         give further clarity as to why unsubstantiated theories pervade our 
         mainstream media, its misinformation directly causing violence, 
         political polarization, and brainwashing. Occurrences of misinformation 
         from Twitter bot activity reflect the need to continuously monitor the 
         spread of false, unreliable misinformation. Data from the Birds Aren't 
         Real conspiracy theory is crucial to understand how Twitter bot 
         activity contributes directly to the dissemination of ungrounded 
         conspiracy theories and associated misinformation."),
  tags$p("The main ethical concern was that we were required to make an account 
         to download this data, rather than it being completely free and open to 
         use. That's a possible concern as it should be available to anyone, 
         even if they don't have an email. Some limitations to this data are the 
         fact that, due to its artificial and satirical nature, the intent 
         behind making a bot dedicated to Birds Aren't Real is likely to deviate 
         from the 'traditional' motivation for making bots that spread untested 
         information unchecked. This may or may not affect the amount of bot 
         activities regarding Birds Aren't Real. It is true that Birds Aren't 
         Real reflects many aspects of actual conspiracy theories and their 
         expansion. However, there is little room for it to be considered 
         political, while a lot of conspiracy theories are prone to being 
         politically interpreted or based on politics. Such cases may or may not 
         display a different bot situation compared to Birds Aren't Real."),
  )
)

plot_1_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category_1",
    label = "Source:",
    choices = c("Twitter for iPhone", "Twitter Web App", "Twitter for Android", 
                "Twitter for iPad", "artspark.io", "Buffer", "TweetDeck", 
                "Hootsuite Inc."),
    selected = "Twitter for iPhone",
    multiple = TRUE)
)

plot_1_main <- mainPanel(
  plotlyOutput(outputId = "plot_1")
)

plot_2_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category_2",
    label = "Source:",
    choices = c("choices"),
    selected = "choices",
    multiple = TRUE)
)

plot_2_main <- mainPanel(
  plotlyOutput(outputId = "plot_2")
)

plot_3_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category_3",
    label = "Source:",
    choices = c("choices"),
    selected = "choices",
    multiple = TRUE)
)

plot_3_main <- mainPanel(
  plotlyOutput(outputId = "plot_3")
)

chart_tab1 <- tabPanel(
  "Chart 1: By Date",
  sidebarLayout(
    plot_1_sidebar,
    plot_1_main
  ),
  fluidPage(),

)

chart_tab2 <- tabPanel(
  "Chart 2",
  sidebarLayout(
    plot_2_sidebar,
    plot_2_main
  ),
  fluidPage(),

)

chart_tab3 <- tabPanel(
  "Chart 3",
  sidebarLayout(
    plot_3_sidebar,
    plot_3_main
  ),
  fluidPage(),

)

conclusion_tab <- tabPanel(
  "Conclusion",
  fluidPage(),
  tags$h3("In Conclusion:"),
  tags$p("[some text]"),
  tags$h3("Takeaways:"),
  tags$p("[some text]"),
)

ui <- navbarPage(
  "Birds Aren't Real??",
  intro_tab,
  chart_tab1,
  chart_tab2,
  chart_tab3,
  conclusion_tab
)