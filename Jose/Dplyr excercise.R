# Dplyr Exercises...........


print(library(dplyr))


#df <- head(mtcars)
#print(df)
#print(head(mtcars))

#Return rows of cars that have an 
#mpg value greater than 20 and 6 cylinders.
df<- mtcars
#print(df)

result <- filter(df,mpg>20 & cyl==6)
print(result)


#Reorder the Data Frame by cyl first, then by descending wt.

result <- arrange(df,cyl,desc(wt))
print(result)


#Select the columns mpg and hp
print(select(df,mpg,hp))

#Select the distinct values of the gear column.
print(distinct(df,gear)) 
#or
print(distinct(select(df,gear)))
#or
print(df %>% select(gear) %>% distinct())


#Create a new column called "Performance" which is 
#calculated by hp divided by wt.

print(mutate(df, Performance=hp/wt))

#Find the mean mpg value using dplyr.
print(summarise(df,avg_mpg = mean(mpg)))

#Use pipe operators to get the mean hp value 
#for cars with 6 cylinders.

print(df %>% filter(cyl==6) %>% summarise(avg_hp = mean(hp)))



