# Themes...........

library(ggplot2)

library(ggthemes)

#theme_set(theme_minimal())
#for whole set of data

pl <- ggplot(mtcars, aes(x=wt,y=mpg)) + geom_point()
#print(pl + theme_dark())
#for individual lines only......


#install.packages('ggthemes')

print(pl + theme_economist())

#now here theme_..lot of themes there....
