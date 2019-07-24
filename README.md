# Regression Model Suite
The goal of this project is to accumulate the code needed to build, compare, and select regression models in both R and Python. Such code may include but is not limited to code for:
- Simple Linear regression models
- Multiple regression models
- Transforming linear models to better fit data
- Hypothesis testing
- F tests and ANOVA/MANOVA

Ideally, the files in the repository should work towards a general goal while including the general functions that are needed to meet that goal. For example, an .Rmd file for creating a 5-predictor model might include functions that cut out predictors based on specific requirements (5% significance level AND a model R^2 value <= .85, <= .95), along with functions that produce the visuals needed to check the validity of the model (residual plot, QQ Plot, etc.). Of course, that doesn't mean that all R code needs to be on one file; a file can be dedicated to transforming linear models to better fit data without having the code that was used to select the model.

It is also preferred that any files have two editions: one in context of data, and one without. In some cases people may find code out of context easier to read and apply to other projects. In other cases, code in context can be useful for learning what the code does through working examples. Both of these targets, learning the code and applying the code, are important to this project and neither should be ignored. 

If a file is created in the context of data, please remember to also upload and cite the data.
For files out of context, please add "-basic" to the end of the file name.

# Contributors
- Ashton Hansen