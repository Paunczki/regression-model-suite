# This is a file to serve as a tutorial about how to 
# make comments, use operators, and create functions in Python


# To start, we can already see that the hashtag (#) is used to designate a line of code
# as a comment. Commenting can be used to describe what a section of code is supposed to do,
# as well as to prevent a section of code from being run (Python ignores comments when compiling).

# Sometimes, hashtags can be used to make banners that act as headers or section titles or to highlight something
# as you'll see next.

#############################
## BASIC ALGEBRA IN PYTHON ##
#############################

# Python can perform a wide range of mathematical computations. For example, try running these:

# Example 1:
2+3

# Example 2:
2-3

# Example 3:
2 * 3

# Example 4:
6/3

# Example 5:
5**2    # Two asterisks are used for exponents in Python, NOT the caret. R uses both (**) and (^).

# If you try typing in 5^2, you won't get 25. That's because the caret operator is used for logic
# and that's something we're not going to get into here.
# Also, if you try to type in something like:

# 8/2(2+2)

# you'll get an error. That's because Python thinks your'e trying to call (use) a function but knows that '2' is
# and integer, not a defined function. In fact, integers cannot be used as functions or variables at all
# in Python or R, lest the world decides that 5 = 2+2. Speaking of variables, let's go over those now.

## VARIABLES

# Variables are like boxes that you can put stuff in. The box can be called anything you want it to be, as long
# as it doesn't start with a number.

variable_name = "Thing stored in variable"  # Things in quotes or between apostrophes are called strings
Santa = 89                                  # Flat numbers like this are called integers, as mathematically defined
RetirementAge = 67.5                        # Non-integer numbers are called floats.

# We can check what has been stored in a variable with type()

type(variable_name)
type(Santa)
type(RetirementAge)

# Variables are useful for doing more complex calculations and making code more efficient:
Computer = 1525.75
Furniture = 600.00
Cash = 10000.00        # Notice you don't need commas for numbers in the thousands and up

Assets = Computer + Furniture + Cash

# If we lose something and need to redefine how much we have in Assets, we can do that:
Assets = Assets - Furniture
# Assets -= Furniture       # Alternate code for Assets = Assets - Furniture


# In the future where sticks have value as a function of cash:
Sticks = (Cash**4)/(45*Cash)
Assets = Sticks + Cash + Computer    # Still haven't found that chair
Happiness_Value = 4*Sticks - Furniture
Self_Worth = Assets + Happiness_Value

# As we can see, creating variables helps us keep track of what certain numbers are, are useful when some values
# depend on others, and can be easily adjusted if the value of a variable needs to be changed.
# Using variables is a lot easier than writing:

Self_Worth = 1525.75 + 10000.00 + ((10000.00**4)/(45*10000.00)) + 4*((10000.00**4)/(45*10000.00)) - 600.00

###############
## OPERATORS ##
###############
# For math
# + Addition
# - Subtraction
# * Multiplication
# / Division

# For comparisons (T/F)
# == Equals
# > greater than
# < less than
# >= greater than or equal to
# <= less than or equal to
# != NOT equal to

#################################
## WRITING FUNCTIONS IN PYTHON ##
#################################
# Functions follow this general format:
def FunctionName(): # 'def' stands for define, as you're defining a function
    """
    In this area, you would usually write the code
    saying what you want the function to do.
    """

# An example of a function would be this:
def hello():
    print("Hello world")

# and to execute this function we would do this:
hello()

# Not all functions will look like this and will become more complex as you
# learn how to apply functions.

# Before doing too much with functions and developing programs,
# you should check out this link with informaiton on writing your code
# to be more readable:
# https://www.python.org/dev/peps/pep-0008/






