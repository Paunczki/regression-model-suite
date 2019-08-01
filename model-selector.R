FiveVar <- read.csv("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/5var.csv",
                 header= T)

# This is a collection of different methods that can be used to build, compare, and select predictive models.
# It should be remembered that different methods have pros/cons and that the method used depends no the 
# situation.

# CONTENTS:
# - Manual Selection, p-value based
# - Forward AIC Model using MASS Package

#####################################
## Manual Selection, p-value based ##
#####################################
# For smaller models, it may be easier to manually create the model. The selection process can be based off
# of several different statistics, and predictor p-values are one type of these statistics.
library("car")
fit1 <- lm(Y ~., data= FiveVar) # 'Y~.' builds a model using all other variables (interaction terms excluded)
summary(fit1)
Anova(fit1, type= "III") # Use Anova() from the 'car' package to use type III sums of squares
# According to the ANOVA tabel (and model summary), X1 and X2 are significant at the 10% significance level
# while X3, X4, and X5 are insignificant. Let's make a function to tell us the model without needing
# to rewrite all this code

## FUNCTION NOT COMPLETE ##
modelp <- function(DATA, ALPHA, Y) { 
  model <- lm(Y ~ ., data= DATA)
  anova <- Anova(model, type= "III")
  F_values <- anova$`Pr(>F)`
  if (F_values <= ALPHA) {
    new_model <- summary$coefficients
  } else {
      print(0)
  }
  print(new_model)
}
## FUNCTION NOT COMPLETE ##

#######################################
## Manual Selection, R^2 value based ##
#######################################
# Models can also be built based on model R^2 values.

##########################################
## Forward AIC Model using MASS Package ##
##########################################
# The forward stepwise model selection is a convenient way to select a model based on the 
# model's Akaike Information Criterion (AIC). AIC is a measure of the amount of information lost
# by a model; when selecting a model, a primary goal will probably be to explain as much variation
# as possible. Since we do not want to lose the amount of variation that can be explained (our information),
# we might try to use a model with the lowest amount of unexplained variation. The forward AIC model
# is different from the backward stepwise model in that the forward model begins with a null model
# with no predictors and the backward model starts with all predictors included.

library(MASS) # Needed for stepAIC()
null = lm(FiveVar$Y~1) # Create the null model first
FiveVarFit3 <- stepAIC(null, FiveVar$Y ~ FiveVar$X1 * FiveVar$X2 * FiveVar$X3 * FiveVar$X4 * FiveVar$X5, direction= "forward")
# Notice that '*' is used instead of '+' for writing the model. Since stepAIC() can do a good amount
# of work relatively quickly to manually building a model, we can include interaction terms without too
# much worry about the time spent building models.
FiveVarFit3

# Benefits of using stepAIC():
# - Fast and convenient
#       - Especially for models with interaction terms
#       - Especially for models with many predictors
# - We get a model that retains the most information (lowest AIC)

# Why we might NOT use stepAIC()
# - R^2 and p-values may be inflated
# - There's little to no human insight to the model
