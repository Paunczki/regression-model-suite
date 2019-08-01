#####################################
## INTRODUCTION: TRANSFORMING DATA ##
#####################################
# Some data might not always be linear, and it can reflect in a residual plot.
FiveVar <- read.table("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/5var.csv",
                        sep= ",",
                        header= T)
FiveVarFitX2 <- lm(Y~X2, data= FiveVar)
FiveVarFitX3 <- lm(Y~X3, data= FiveVar)
FiveVarFitX4 <- lm(Y~X4, data= FiveVar)

# FiveVarFitX2
plot(Y ~ X2, data= FiveVar,
     main= "Y Regressed onto X2",
     ylab= "Y",
     xlab= "X2")
abline(reg = FiveVarFitX2,
       col= "red")
plot(lm(Y ~ X2, data= FiveVar), 1)

# FiveVarFitX3
plot(Y ~ X3, data= FiveVar,
     main= "Y Regressed onto X3",
     ylab= "Y",
     xlab= "X3")
abline(reg = FiveVarFitX3,
       col= "red")
plot(lm(Y ~ X3, data= FiveVar), 1)