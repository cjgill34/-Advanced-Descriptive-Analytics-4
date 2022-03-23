#Question 4.2 part a
Universities.df <- read.csv("/Users/cjgil/OneDrive/SCMA 854/Universities.csv")
View(Universities.df)
str(Universities.df)

Uni.df <- Universities.df[-c(1:3)]
View(Uni.df)

sum(is.na(Uni.df))
complete.cases(Uni.df)
cleanUni.df <- Uni.df[complete.cases(Uni.df), ]
str(cleanUni.df)
sum(is.na(cleanUni.df))
View(cleanUni.df)


#Question 4.2 part b
UniPCS <- prcomp(cleanUni.df)
summary(UniPCS)

#The data should be normalized because PC4, PC5 and PC15 are percentages of the 
#top 10 and 25 percent of students and the percentage of faculty with a PhD.
#The percentage values are different units and so they skew the results which is
#why normalization would be useful. PC1 and PC2 have a cumulative variance
#proportion of .9259 which means they are key components. 
