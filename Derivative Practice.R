##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative Practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#................Practice using the function D().................

# one small change

my_expression <- expression(5 * x^2)
my_derivative <- D(expr = my_expression, name = "x")

my_derivative

x <- 2.8

eval(my_derivative)


#....................Another Exampel with D()....................
#find derivative with respect to x
my_derivative <- D(expr = expression(3.1 * x^4 - 28 * x), name = "x")

#create and store a function

fx <- expression(x^2)

#find the derivatove with respect to x
df_dx <- D(expr = fx, name = "x")

x <- 10

eval(df_dx)


# My turn
#1

gz <- expression(2 *z^3 - 10.5*z^2 + 4.1)
dg_dz = D(expr = gz, name = "z")

dg_dz

#2) 

dy <- expression(2*y^3 - 10.5*z^2 + 4.1)
dt_dy = D(expr = dy, name = "y")
dt_dy

# find slope of T(y) at a range of values

y <- seq(from = -0.4, to = 2.0, by = .1)

#val the slop of T(y) at erach value

eval(dt_dy)
