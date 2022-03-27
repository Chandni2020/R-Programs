# 2 variables plotting with ggplot2......

library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x=year,y=rating))

#print(pl + geom_bin2d())

#pl2 <- pl + geom_bin2d()


#pl2 <- pl + geom_bin2d(binwidth=c(3,1))
#pl2 <- pl + geom_hex()
#install.packages('hexbin)

#print(pl2 + scale_fill_gradient(high = 'red', low ='blue'))
#scale_fill_gradient is used to fill different color


#for 2D density plot........
pl2 <- pl + geom_density2d()
print(pl2)

#for more plots, check cheat sheet
