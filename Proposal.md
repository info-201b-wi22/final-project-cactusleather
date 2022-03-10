# Final Project Proposal

Please complete your proposal following the outline below.

## Project title: Bird's Aren't Real???

### Authors

- Owen Pronovost (oprony@uw.edu)

- Kerry Malone (kerrym6@uw.edu)

- Alex Seo (hs268@uw.edu)

- Blake Sketchley (sketchb@uw.edu)

### Date
2/4
Winter 2022
## Abstract

Our group will study how much bot activity contributes to the spread of conspiracy theories. The rise of social media (namely, Twitter) brought about the rapid development and circulation of misinformation, which are threats to public interests, safety, and security at times. We aim to analyze data collected from Twitter that discusses the well-known parody conspiracy theory - the Birds Aren't Real movement.

## Keywords
Keywords: Twitter; Conspiracy; Misinformation; Social Media; False Facts

## Proposal

1. Introduction  

> Briefly introduce your project.  Include 3-5 research questions. What motivates the questions? Why are they important? (at least 200 words)

Twitter has suffered from unwelcome bot accounts and activity since its inception. To the untrained eye, they may appear as reliable accounts owned and ran by an actual human. The effects these bots have range from funny when easily noticed to outright dangerous, particularly if the bot is spreading believable disinformation. As a recent example of this, in May 2020 a group of researchers conducted a [study](https://www.npr.org/sections/coronavirus-live-updates/2020/05/20/859814085/researchers-nearly-half-of-accounts-tweeting-about-coronavirus-are-likely-bots) and discovered that up to 45% of COVID-19 related tweets were from accounts that behaved like bots. These bot accounts were spreading vast amounts of disinformation that had real-world consequences. The risk these bots pose for maintaining the spread of accurate information cannot be understated; as such, researching the frequency of bot posts on various "hot topics" is critical to ensuring that the average post about those topics is accurate and reliable.

On a significantly more light-hearted topic than COVID-19, the "Birds Aren't Real" conspiracy theory claims that the U.S. government has gradually replaced birds with drone mimics, which are used by the NSA (or another government agency, depending on the theorist) to conduct surveillance on U.S. citizens. The primary goal of this study is to identify the percentage of posts related to the "Birds Aren't Real" conspiracy that are posted by bot accounts. The resulting percentage could be telling of the presence of disinformation-spreading bots on Twitter as a whole. Additional points of research include any potential location trends and date trends - that is, when the conspiracy theory had a stronger/weaker presence online.

2. Related Work  

> Describe your topic and related work in this space. You must include 3 citations to related work (URLs to similar work, high quality articles from the popular press, research papers, etc. ) Please use a standard citation style of your choice. (at least 200 words)

The Birds Aren’t Real parody conspiracy theory highlights the prevalence of Twitter bot misinformation in a world where data is abundant, but not regulated for accuracy. Studying this dataset may give further clarity as to why unsubstantiated theories pervade our mainstream media, its misinformation directly causing violence, political polarization, and brainwashing. One study conducted in 2020 found that Twitter bots “exacerbate the consumption of context within the same political chamber,” especially among right-leaning accounts (Gersema, 2021). In the study, Tweets from Twitter bots were traced back to several conspiracies like QAnon and coronavirus origin conspiracy (Gersema, 2021). The radical political conspiracy QAnon has been associated with several acts of extreme violence including the January 6th attack on the Capitol, where 20 self-identified QAnon believers were arrested (Benner, 2021). Another study conducted in 2021 examined the roles of Twitter bots in the retweeting misinformation about COVID-19 (Xu & Sasahara, 2021). They found that non-credible bots were selectively amplifying far-right media and celebrity accounts (Xu & Sasahara, 2021). These occurrences of misinformation from Twitter bot activity reflect the need to continuously monitor the spread of false, unreliable misinformation. Data from the Birds Aren’t Real conspiracy theory is crucial to understand how Twitter bot activity contributes directly to the dissemination of ungrounded conspiracy theories and associated misinformation.

3. The Dataset

> Where did you find the data? Please include a link to the data source

- https://www.kaggle.com/gpreda/birds-arent-real-on-twitter-either

> Who collected the data?

- Gabriel Preda: PhD in Computational Electromagnetics, worked at Machine Learning to solve ill-posed inverse problems in NDT, worked for long time in Software Development, even for a while as a Project Manager, started few years ago to dive into Data Science, currently working as a Data Scientist at Endava.

> How was the data collected or generated?

- Tweets from @birdsarenotreal account on Twitter and using #birdsarenotreal hashtag. Collected using tweepy. The data is not filtered.

> Why was the data collected?  

- A significant number of members of Generation Z actively propagate (as a joke or seriously) the myth that birds doesn't exist anymore, because they were gradually replaced by the government with drones. These drones perform, in this conspiracy theory, surveillance of the citizens.

>How many observations (rows) are in your data?

- 1154 Rows

> How many features (columns) are in the data?

- 16 Columns

> What, if any, ethical questions or questions of power do you need to consider when working with this data?

- Not many, the only concern was that I was required to make an account to download this data, rather than it being completely free and open to use. That's a possible concern as it should be available to anyone, even if they don't have an email.

> What are possible limitations or problems with this data?   (at least 200 words)

- The fact that the Birds Aren't Real movement is a mock conspiracy with little to no real-life implications does present an issue. Due to its artificial and satirical nature, the intent behind making a bot dedicated to Birds Aren't Real is likely to deviate from the 'traditional' motivation for making bots that spread untested information unchecked. This may or may not affect the amount of bot activities regarding Birds Aren't Real.
- It is true that Birds Aren't Real reflects many aspects of actual conspiracy theories and their expansion. However, there is little room for it to be considered political, while a lot of conspiracy theories are prone to being politically interpreted or based on politics. Such cases may or may not display a different bot situation compared to Birds Aren't Real.
- In line with the problem that will be addressed in Limitations & Challenges, the dataset has a rather small scope. Not only is it limited to one social media, but the source also reveals that the targeted tweets were either from @birdsarenotreal account or contained the #birdsarenotreal hashtag. This is a shortcoming because there might be other accounts born from the Birds Aren't Real movement, and loads of people simply tweet without hashtags. Ideally, tweets that contain the text "birds aren't real" at all should be collected as well.

4. Implications

> Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (at least 150 words)

- These questions being answered could help us better understand the effects of misinformation and disinformation being spread through social media, whether through bots or real people. For technologists specifically, one effect might be that they have a better understanding of how to recognize bot accounts and find ways to prevent their influence online. As for designers, they might be able to format the information from the technologists and present it to Twitter users who may be viewing an account that is likely ran by a bot. However, the research displayed will likely have the largest effects on policymakers, as many technologists already have a method for identifying bot accounts, and designers already have a method of notifying users that a page might have misinformation on it. In this instance, "policymakers" refers to the writers of the User End Agreement for Twitter and other social media sites. Depending on the rate of bot accounts, they may wish to take additional action to actually employ the aforementioned technologists and designers to implement changes to reduce the amount of bot accounts on their sites.

5. Limitations & Challenges
>What challenges or limitations might you need to address with your project idea more broadly? Briefly discuss. (at least 150 words)

The question we're asking about bot activity, falsified information, and it's spread on social media is widely based on assumption, rather than real proof. Much like the conspiracy being propagated by these twitter accounts, one challenge we have is to avoid spreading information that has no real backing by data or proof. Additionally, a limitation of this project by design is that we can only use a single dataset, rather than multiple data sets from various social media platforms possibly. The data we see is exclusively twitter, meaning it might be skewed, or not show the real picture of how far the conspiracy has spread. Finally, we also don't know what proportion of the tweets are real people and how many are bots, we are making the assumption that identical bios/profile names is indicative of a bot, while account that are more unique are most likely real people. But there is technically no way of knowing if the account is real or a bot.

## Works Cited

Benner, K. (2021, June 15). The F.B.I. warns that some QAnon believers could turn to violence as predictions fail to bear fruit. The New York Times. Retrieved February 3, 2022, from https://www.nytimes.com/2021/06/15/us/politics/qanon-fbi-violence.html

Gersema, E. (2021, August 3). Election 2020 chatter on twitter busy with bots and conspiracy theorists. USC News. Retrieved February 3, 2022, from https://news.usc.edu/177963/election-2020-twitter-social-media-bots-foreign-interference-usc-study/

Xu, W., & Sasahara, K. (2021, September 2). Characterizing the roles of bots on Twitter during the COVID-19 infodemic - journal of computational social science. SpringerLink. Retrieved February 3, 2022, from https://link.springer.com/article/10.1007/s42001-021-00139-3
