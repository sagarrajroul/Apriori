#Apriori Algorithms
#data preprocessing
#install.packages("arules")
#library(aruels)
dataset = read.csv("Market_Basket_Optimisation.csv",header = FALSE)
dataset = read.transactions("Market_Basket_Optimisation.csv", sep = ',',rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset,topN=10)

###training the apriori algorithm
#support =3*7/7500
rule = apriori(data = dataset ,parameter = list(support=0.003,confidence=0.8)) 
#0 rule
rule = apriori(data = dataset ,parameter = list(support=0.003,confidence=0.4))
#281 rule
rule = apriori(data = dataset ,parameter = list(support=0.003,confidence=0.2))
#1344 rule

##visualizing the result
inspect(sort(rule,by ='lift')[1:10])
