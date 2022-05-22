#setwd("~/Documents/GitHub/R-Programs/Jose/R-Course-HTML-Notes/
#R-for-Data-Science-and-Machine-Learning/Machine Learning with R")

#setting working directory for the data
#from session > choosing working directory.....
library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)


df <- read.csv('student-mat.csv', sep = ';')

#here files were separated by ';', so these were in a type of list.
#to have a look of table type, sep=';', command is added here....

print(df)
print(head(df))

#to check if there is 'NA' values in data.........

print(any(is.na(df)))
#answer is false, means data is clean.........

print(str(df))

#----------------------------------------------------------------

#num only

num.cols <- sapply(df, is.numeric)

#filter
#cor function here is related to 'correlation' used in statistics..........
cor.data <- cor(df[,num.cols])

print(cor.data)

#-----------------------
#installing packages here.........
#install.packages('corrgram)
#install.packages('corrplot')
#------------------------------------------
print(corrplot(cor.data, method = 'color'))

#------------to use corrgram-------------------
# corrgram:---but in corrgram we can pass out the data frame, df directly,
#but here to add couple of more arguments we need to add, which thing we
#actually want to observe,....

#corrplot:----require us to take and filter by numeric columns and then 
#only grab those num colmns...

#-----------------------------------------------------------------
print(corrgram(df))

#print(help('corrgram'))

print(corrgram(df, order = TRUE, lower.panel = panel.shade,
               upper.panel = panel.pie, text.panel = panel.txt))

#---------------------PLOT for G3 score--------------------
print(ggplot(df, aes(x=G3)) + geom_histogram(bins = 20, alpha = 0.5,
                                             fill='blue'))


