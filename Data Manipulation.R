
#DAta Manipulation.......

#Dplyr: Manipulating data
#Tidyr: cleaning data
#Pipe Operator: %>%

#install.packages("dplyr")
#install.packages("nycflights13")

#library(dplyr)
#library(nycflight13)

print(head(flights))

print(summary(flights))

print(head(filter(flights, month==11, day==3, carrier=='AA')))
#or following command will give same output
print(head(flights[flights$month==11 & flights$day==3 & flights$carrier=='AA', ]))

#comparing above both commands, we can observe that with 'filter'
#it becomes easy to run the program, rather than other one. 

# SLICE: it returns rows by position......

print(slice(flights, 1:10))

print(head(arrange(flights,year,month,day,arr_time)))


