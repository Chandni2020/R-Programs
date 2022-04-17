# Lists in R.......recursive vectors..............
# group R objects into a set
#lists can store other lists...
#lists are one dimensional
#lists can store elements of different basic types
#no inherent structure

#my.book <- list('1984', 'George Orwell', 1949,
#                list(c(1:8), c(1:10), c(1:6), 'Newspeak'))

#print(my.book)
#print(str(my.book))


my.book <- list(Name = '1984', Author = 'George Orwell', Published = 1949,
                Contents = list(PartOne = c(1:8),
                                PartTwo = c(1:10),
                                PartThree = c(1:6),
                                Appendix = 'Newspeak'))

print(my.book)
print(str(my.book))


new.book <- list('1984', 'George Orwell', 1949,
                            list(c(1:8), c(1:10), c(1:6), 'Newspeak'))

names(new.book) <- c('Name', 'Author', 'Published', 'Contents')
print(str(new.book))

print(my.book[1:2])
print(my.book[4])
print(my.book[[4]]) #4th part
print(my.book[[4]][2]) # 2nd element of 4th part as a list
print(my.book[[4]][[2]])# 2nd element of 4th part as a vector


#-------------------EXCERCISE--------------------------------------------
#1. Create a list which prints like this:
newList <- list(seq(1,11, by=2), list('Happy Birthday', 'Archery'))
print(newList)

#2. Extract the numbers as a vector.
print(newList[[1]])


#3. Extract the phrase Happy Birthday as a vector.
print(newList[[2]][[1]])


#4. Extract the second item of the second list as a list.
print(newList[[2]][2])

#5. Extract the second list as a list.
print(newList[2])

#6. Extract the numbers item as a list.
print(newList[1])

#7. Add 2 to each element in the numbers item.
list2 <- newList[[1]] +2
print(list2)

#8. Name the items in the list as "Numbers" and "Phrases".
names(newList) <- c('Numbers', 'Phrases')
print(newList)


#8. You can use the $ to extract named items of a list, like this: 
#list$item. If you extract the numbers item from newList with the $,
#what other extraction method is this equivalent to?
  
print(newList$Numbers)
print(newList$Phrases)

print(newList[[1]])
print(newList[[2]])



#9. Use the dollar sign to repeat the addition from above (add 2 to each 
#element in the numbers list).
list3 <- newList$Numbers +2
print(list3)



#10. Add a new item called "Brands" to the list. It should contain the brands 
#Kellogs, Nike, iPhone. Use either brackets or the dollar sign to do that.

newList[[3]] <- c('Kellogs', 'Nike', 'iPhone')
names(newList)[[3]] <- 'Brands'
print(newList)

#or
newList$Brands <- c('Kellogs', 'Nike', 'iPhone')
str(newList)

#11. Remove the iPhone from the Brands item.

newList[[3]] <- newList[[3]][-3]
print(newList)

#or 
newList$Brands <- newList$Brands[-3]
print(newList)


#12. Remove the Brands item from the list.

newList$Brands <- NULL
print(newList)

#or

newList[[3]] <- NULL
print(newList)

#or


newList <- newList[-3]
print(newList)

