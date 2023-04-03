Programming

add3numbers = function(x,y,z) {
  sum = x+y+z
  print(sum)
}

add3numbers(1,2,3)

## Default values to your function

add3numbers(1,2) # error. argument z missing

add3numbers2 = function(x=1,y=2,z=3) {
  sum = x+y+z
  print(sum)
}

add3numbers2(1,2)

add3numbers2(x=9)


### Functions don't need inputs...
add123 = function() {
  sum = 1+2+3
  print(sum)
}

add123()


### Conditional
## if/else
# Conditional is when you tell a computer to do sth 
# if a condition is TRUE, but another if FALSE

# if (CONDITION) {
#whatever you want R to do if TRUE
#} else {Whatever you want R to do if FALSE
#}

#symbols for conditions
== (equal to)
!= (not equal)
>= (or >) greater than (or equal)
<= (or <) less than (or equal)
%in% (doe sthe object include it or not)
  c(1,2,3) %in% 1
  1 %in% c(1,2,3)
& (and)
| (or)

a <-80  
a == 90 | a == 80


## Step 1. Create object ot test
grade = 95
if (grade < 70){
  print("FAIL")
} else {
  print("PASS")
}

## elseif
if (grade < 70) {
  print("FAIL")  ## If 1st conditional is TRUE
} else if (grade <80) {
  print ("C") ## If 1st is FALSE, but 2nd is TRUE
} else if (grade <90) {
  print ("B") ## IF 1st & 2nd is FALSE, but 3rd is TRUE
} else {
  print ("A") ## If 1st, 2nd, and 3rd are FALSE
}

## Conditional inside a function
passfail = function(grade) {
  if (grade < 70){
    print("FAIL")
  } else {
    print("PASS")
  }
}

passfail(45)
passfail(67)

## Loops (while / for)
# You have a list (e.g. 1 to 100). 
# You tell R to do the same thing over and over again for each element in your list

for (object name in LIST) {
  FUNCTION you want to run
}

for (i in c(1:100)) {
  print(i^2)
}

# seq(start, end, by)
for (i in seq(1,100,1)) {
  print(i^2)
}

# Conditional inside the loop
for (grade in seq(1,100,10)) {
      if (grade < 70){
      print("FAIL")
    } else {
      print("PASS")
    }
  }

#Ignore
for (grade in seq(1,100,10)) {
  if (grade < 70){
    print("FAIL")
  } else {  }
}

## Vectors and Lists
vector name = vector() #empty vector
list name = list() #empty list

vec = vector()
list = list()

for (i in 1:10) {
  vec[i] = i + 10
  list[[i]] = i + 10
}

vec
list

for (i in 1:10) {
  list[[i]] = matrix(c(i,i))

# 1) Write a function that takes an input (number) and then returns "even" if even number, 
# "Prime" if prime number, and "non-prime" if non-prime odd number.

# 2) Loop over this functions for every value btwn 1 to 100 and store it into a vector.