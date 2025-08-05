##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                        PARTIAL DERIVATIVE PRACTICE                       ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#load library
# tidyverse

library(tidyverse)
library(ggplot2)

rm(list = ls())

eq1 <- function(x) {
  3 * x^2 + 4
}

#creates data frame with range of values to eval function over
my_data_data_range <- data.frame(x = c(1, 100))

#now plot as continuous curve over a range of x-values in the df and adds the y values from function to the plot

ggplot(data = my_data_data_range, aes (x = x)) + geom_function(fun = eq1)

#..................Example Plotting Derivative...................

# Plot 2

#storing the function

ct <- function(t) {
  t^3
}

my_data_data_range <- data.frame(t = c(-5,5))

#plot it ----
ggplot(data = my_data_data_range, aes(x = t)) + geom_function(fun = ct)

#find derivative
dc_dt <- D(expr = expression(t^3), name = "t")
dc_dt

#Store the derivative as a f(x)
dc_dt_fun <- function(t) {
  3 * t ^2
}

#Plot the function together with the other

ggplot(data = my_data_data_range, aes(x = t)) + geom_function(fun = ct, color = "red") + geom_function(fun = dc_dt_fun, color = "blue")

#..................Partial Derivative Practice...................

#Creating the expression ----

f_xyz <- expression(2 * x * y - 3 * x^2 * z^3)

# partial with respect to x

df_dx <- D(expr = f_xyz, name = "x")
df_dx

df_dy <- D(expr = f_xyz, name = "y")
df_dy

df_dz <- D(expr = f_xyz, name = "z")
df_dz

