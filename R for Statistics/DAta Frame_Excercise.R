#-------Excercise-------Creating a data frame--------------



car_name <- c('VolkswagenTouareg', 'CitroenC3', 'AudiA3', 'ToyotaYaris',
             'KiaForte', 'DaciaLogan', 'NissanPajero')

year <- c(2, 3, 4, 5, 8, 9, 8)

size <- c('medium', 'small', 'medium', 'small', 'small', 'medium', 'extra large')

mpg <- c(25, 47, 27, 36, 31, 2 , 36)

geerbox <- c('manual', 'manual', 'auto', 'auto', 'manual', 'manual', 'auto')

df <- data.frame(Year, Size, MPG, Geerbox)
print(df)



cars <- data.frame(year, size, mpg, geerbox)
names(cars) <- c("Year", "Size", "MPG", "Geerbox")
rownames(cars) <- car_name


levels(cars[,'Geerbox']) <- c('auto', 'manual')
print(cars)




