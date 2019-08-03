#####################################
## INTRODUCTION: TRANSFORMING DATA ##
#####################################
# Some data might not always be linear, and it can reflect in a residual plot.
FiveVar <- read.table("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/5var.csv",
                        sep= ",",
                        header= T)

# FiveVarFitX2
FiveVarFitX2 <- lm(Y~X2, data= FiveVar)

plot(Y ~ X2, data= FiveVar,
     main= "5var: Y vs X2",
     ylab= "Y",
     xlab= "X2")
abline(reg = FiveVarFitX2,
       col= "red")

plot(lm(Y ~ X2, data= FiveVar), 1) # The relationship between X2 and Y look similar, no transformation needed.

# ThreeVarFitX2
ThreeVar <- read.table("C:/Users/Ashton Hansen/Documents/GitHub/regression-model-suite/data/3var.csv",
                       sep= ",",
                       header= T)
ThreeVarFitX1 <- lm(Y~X1, data= ThreeVar)

plot(Y ~ X1, data= ThreeVar,
     main= "3var: Y vs X1",
     ylab= "Y",
     xlab= "X1")
abline(reg = ThreeVarFitX3,
       col= "red")

plot(lm(Y ~ X1, data= ThreeVar), 1) # The relationship between X1 and Y look logarithmic and will need to be transformed.
