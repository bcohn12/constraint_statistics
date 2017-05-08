#Produce PDF
require(knitr)
require(markdown)
#Run the PDF
knit("main.Rmd")

#Creating PDF 
markdownToHTML('main.Rmd', 'main.html', options=c("use_xhml"))
system("pandoc -s main.html -o main.pdf")

