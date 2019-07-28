FiveVar <- read.csv("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/5var.csv",
                 header= T)


###################################################
## Forward Stepwise AIC Model using MASS Package ##
###################################################
# The stepwise model selection is a convenient way to select a model based on the 
# model's Akaike Information Criterion (AIC)
library(MASS)
fit = lm(FiveVar$Y~1)
FiveVarFit1 <- stepAIC(fit, FiveVar$Y ~ FiveVar$X1 + FiveVar$X2 + FiveVar$X3 + FiveVar$X4 + FiveVar$X5, direction= "forward")
FiveVarFit        
