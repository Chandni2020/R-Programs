##
#
#----------------Creating----a------Data Frames-----------------------------


title <- c('Star Wars', 'the Empire Strikes Back', 'Return of the Jedi',
           'The Pheantom Menace', 'Attack of the Clones', 'Revenge of the Sith',
           'The Force Awakens')


year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)

length.min <- c(121, 124, 133, 133, 142, 140, 135)

box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059)


my.data <- data.frame(title, year, length.min, box.office.mil)

print(my.data)

#to rename the column......1st method.-----------------------------

names(my.data) <- c('Movie Title', 'Release Year', 
                    'Length in Minutes', 'Box Office')

print(my.data)


#to rename the column......2nd method.-------------------------------

my.data <- data.frame(Title = title, Year = year, Length = length.min,
                      Gross = box.office.mil)
print(my.data)


#----------rows can be renamed---------but not convenient----------

#  data.frame(....., row.names = )


str(my.data)

#here title of movies may show 'Factor' function, if I want to change
#its type then use following command......

my.data <- data.frame(Title = title, Year = year, Length = length.min,
                      Gross = box.office.mil, stringsAsFactors = FALSE)
print(my.data)

str(my.data)

