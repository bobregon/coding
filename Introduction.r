# Example of arithmetic in R

2^3    #exponent   ^ is preferred, ** works too
11 %/% 3  #integer division
11 %% 3   # module (remainders)
log(100)  # functions take input inside of parentheses


# variable assignment uses the "ARROW": <- OR ->
snake_case <- "foo_bar"
CamelCase <- "foobar"
dot.case <- "foo.bar"

"dog" -> bar

#Package Management
installed.packages()
install.packages()
update.packages()
remove.packages()

install.packages("ggplot2")

library(ggplot2)

c(1,2,"f")

paste(1,2)

paste(c("One","two","three"), c(1,2,3), c(10,20))

