protein_names <- c("AKT","EGFR","MTORC")
intensity <- c(2.1,3.4,4.2)

experiment <- data.frame(protein_names = c("AKT","EGFR","MTORC"),
           intensity = c(2.1,3.4,4.2),
           in_membrane = c(0,1,0)
)

setwd("~/R")

dir.create("data")

write.csv(x = experiment, file = "data/experiment.csv", row.names = FALSE)

install.packages("rmarkdown")

library("rmarkdown")


render("1-example.Rmd")
