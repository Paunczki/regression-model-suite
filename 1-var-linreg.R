# You will need to download the data and fill in your own file path for read.csv()
df1 <- read.csv("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/US_Executions.csv",
                header = TRUE)

##############################
## SIMPLE LINEAR REGRESSION ##
##############################

# The model will be:
# <age> = Beta0 + Beta1<victim count> + Error

fit1 <- lm(Age ~ Victim.Count, data= df1)
summary(fit1) # Looking at the R^2, it's a bad model but we'll use it for the sake of code
anova(fit1)
plot(Age ~ Victim.Count, data= df1,
     pch= 16, # pch=1 gives empty dots, pch=16 gives filled in dots; personal preference
     main= "Victim Count vs Age",
     xlab= "Victim Count")
abline(df1$Victim.Count, df1$Age,
       col= "blue")
plot(fit1)

####################################################
## SIMPLE LINEAR REGRESSION W/ INDICATOR VARIABLE ##
####################################################

# The model will be:
# <age> = B0 + Bi<method> + E
plot(Age ~ Method, data= df1,
     main= "Method of Execution vs Age",
     xlab= "Method of Execution")
fit2 <- lm(Age ~ Method, data= df1)
summary(fit2)
anova(fit2)
plot(fit2)
