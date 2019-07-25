# You will need to download the data and fill in your own file path for read.csv()
dataframe <- read.csv("sample.csv",
                header = TRUE)

##############################
## SIMPLE LINEAR REGRESSION ##
##############################

# The model (MODEL A) will be:
# <y> = Beta0 + Beta1<x1> + Error
# Create the model:
LinearFit <- lm(y ~ x1, data= dataframe)

# Summary and ANOVA of the model:
summary(LinearFit) # Looking at the R^2, it's a bad model but we'll use it for the sake of code
anova(LinearFit)

# Scatterplot of the model with line of best fit:
plot(y ~ x, data= dataframe,
     pch= 16, # pch=1 gives empty dots, pch=16 gives filled in dots; personal preference
     main= "Main Title",
     xlab= "x-axis Label",
     ylab= "y-axis Label")
abline(dataframe$x1, dataframe$y,
       col= "Line Color")

# Residual Plot, QQ Plot, Scale-Location Plot, Leverage plot
plot(LinearFit)

####################################################
## SIMPLE LINEAR REGRESSION W/ INDICATOR VARIABLE ##
####################################################

# The model (MODEL B) will be:
# <y> = B0 + Bi<Xi> + E
LinearFit2 <- lm(y ~ Xi, data= dataframe)

# Boxplots for each factor for Xi
plot(y ~ Xi, data= dataframe,
     main= "Main Title",
     xlab= "x-axis Label",
     ylab= "y-axis Label")

# Summary and ANOVA
summary(LinearFit2)
anova(LinearFit2)

# Residual Plot, QQ Plot, Scale-Location Plot, Leverage plot
plot(LinearFit2)
