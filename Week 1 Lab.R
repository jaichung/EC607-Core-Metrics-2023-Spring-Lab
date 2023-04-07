
#### 1. Package management ####

# The most basic way to do
install.packages("dplyr")

# Once you install a package, you don't need to install again, but just load them
library(dplyr)

# When you need a lot of packages...
install.packages("pacman")
library(pacman)
p_load(dplyr, ggplot2, lfe, data.table, rmarkdown, tidyr, tidyverse)



#### 2. Loading data from Github ####

## CSVs
p_load(readr)

# When using files in your local device
read_csv("FILE YOU WANT TO IMPORT")

# In Github(or as url)
read_csv(url(""))

hwdata = read_csv(url(""))


## Excel
p_load(readxl)
NCES_Data <- read_excel("G:\My Drive\2023-Spring\Core Metrics\NCES_Data.xls", 
                        sheet = "Master Data")

## dta
p_load(readstata13)
State_Econ <- read.dta13("G:\My Drive\2023-Spring\Core Metrics\State_Econ.dta")




#### 3. Objects and Classes ####

# R is an object oriented program.
# All objects have its type/classes, and also structure.

## Class(type) 
# 1, 2/3 are numeric
1
class(1)

# "Hello" and 'bye' are both characters
class("Hello")
class('bye')

# TRUE, T, FALSE, and F are logical
2>3
class(2>3)


## Structure e.g.  vector, matrix, data.frame, ...
# numeric-class vector
1:3 #integer
class(1:3)

c(1,2)
class(c(1,2))

seq(2,8,2)
class(seq(2,8,2))

# character-class vector
c("Spring","Break","Too Short")
class(c("Spring","Break","Too Short"))

c(1,0,F,"Bring our spring break back")
class(c(1,0,F,"Bring our spring break back"))

# matrix
matrix(data = 1:15, ncol=5)

#data.frame can have various classes in it
# dataframe with 3 columns(variables), x, y, and z
# x is numeric, y is character, and z is logical 
data.frame(x = 1:2, y=c("a","b"), z = T)


## To check object's type
is.matrix(matrix(data = 1:15, ncol=5))
is.matrix(data.frame(x = 1:2, y=c("a","b"), z = T))
is.data.frame(data.frame(x = 1:2, y=c("a","b"), z = T))


## Changing types and classes
1:3
class(1:3)
as.matrix(1:3)
class(as.matrix(1:3))



#### 4. Function  ####

# run together in a predefined order every time the function is called.
# built-in or created by the user (user-defined)

# Why and when do we need to define our own function?
# To optimize!
# avoid the repetition of the same block of code used for a specific task 
# that is frequently performed in a particular project
# prevent us from inevitable and hard-to-debug errors related to 
# copy-paste operations, and make the code more readable.


## Built-in Functions in R ##

# There are plenty of helpful built-in functions in R used for various purposes. 
# Some of the most popular ones are:
  
#min(), max(), mean(), median() ??? return the minimum / maximum / mean / median value of a numeric vector, correspondingly
sum() # returns the sum of a numeric vector
range() # returns the minimum and maximum values of a numeric vector
abs() # returns the absulute value of a number
str() # shows the structure of an R object
print() # displays an R object on the console
ncol() # returns the number of columns of a matrix or a dataframe
length() # returns the number of items in an R object (a vector, a list, etc.)
nchar() # returns the number of characters in a character object
sort() # sorts a vector in ascending or descending (decreasing=TRUE) order
exists() #returns TRUE or FALSE depending on whether or not a variable is defined in the R environment

vector <- c(13, 9, 14, 2, 1, 6, 123)

print(min(vector))
print(mean(vector))
print(median(vector))
print(sum(vector))
print(range(vector))
print(str(vector))
print(length(vector))
print(nchar(vector))
print(sort(vector, decreasing=TRUE))
print(exists('vector'))  ## note the quotation marks



## User-defined Function ##
add3numbers = function(x,y,z) {
  sum = x+y+z
  print(sum)
}

add3numbers(1,2,3)

add3numbers(1,2) # error. argument z missing

# What if parameters are already defined?
add3numbers2 = function(x=1,y=2,z=3) {
  sum = x+y+z
  print(sum)
}

add3numbers2(1,2)
add3numbers2(4,5,6)
add3numbers2(x=9)


# Some functions don't need inputs
add123 = function() {
  sum = 1+2+3
  print(sum)
}
add123()


# In this case, order did not matter. 
# However, in many cases you should be careful about orders of your parameters

ordermatters = function(l,h,w) {
  utility = log(w*h)+l
  print(utility)
}

ordermatters(0.2,0.8,10)
ordermatters(0.8,0.2,10)
ordermatters(h=0.8, w=10, l=0.2)


#### 5. Rmd, Knit ####

# Rmd = R Markdown file = code + results(table, plot, etc) + your notes in a single form
# Reproducible 

# File > New File > R Markdown > choose whatever form you want(html recommended)

# When you want your outcome(html or pdf) of your Rmd file, then you have to click knit.