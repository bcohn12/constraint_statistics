#Produce PDF
require(knitr)
require(markdown)
library("rmarkdown")

#Compile R Markdown and create html
render("main.Rmd")
#Create PDF from html
system("pandoc -s main.html -V geometry:margin=0.5in -o main.pdf")