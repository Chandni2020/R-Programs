#Data Visualization with R,......Histograms....

#install.packages('ggplot2')
#install.packages('ggplot2movies')

library(ggplot2)
library(ggplot2movies)

# Data Aesthetics...............

pl <- ggplot(movies,aes(x=rating))

#Geometry layer......

pl2 <- pl + geom_histogram(binwidth = 0.1,color ='red', fill ='pink', alpha=1)
#aplha is used for transperancy, 0 for transparent and 1 for opaque......

pl3 <- pl2 + xlab('Movie rating') + ylab('Count')

#xlab and ylab is to rename xand y-axis......

print(pl3 + ggtitle('MY TITLE'))

#ggtitle is used and written on the top of plot....

# to have a difference in color according to number of counts, following
#aes(fill=..count..)command will work.....

pl2 <- pl + geom_histogram(binwidth = 0.1,aes(fill=..count..))

pl3 <- pl2 + xlab('Movie rating') + ylab('Count')
print(pl3)

