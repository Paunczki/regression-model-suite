FiveVar <- read.csv("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/5var.csv",
                 header= T)

# This is a collection of different methods that can be used to build, compare, and select predictive models.
# It should be remembered that different methods have pros/cons and that 


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

library(MASS)
fit = lm(FiveVar$Y~1) # Create the null model first
FiveVarFit1 <- stepAIC(fit, FiveVar$Y ~ FiveVar$X1 * FiveVar$X2 * FiveVar$X3 * FiveVar$X4 * FiveVar$X5, direction= "forward")
# Notice that '*' is used instead of '+' for writing the model. Since stepAIC() can do a good amount
# of work relatively quickly to manually building a model, we can include interaction terms without too
# much worry about the time spent building models.
FiveVarFit1

# Benefits of using stepAIC():
# - Fast and convenient
#       - Especially for models with interaction terms
#       - Especially for models with many predictors
# - We get a model that retains the most information (lowest AIC)

# Why we might NOT use stepAIC()
# - R^2 and p-values may be inflated
# - There's little to no human insight to the model
