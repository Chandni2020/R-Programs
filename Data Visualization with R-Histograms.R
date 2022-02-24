#Data visualization with R-----Scatterplots.......

library(ggplot2)
df <- mtcars

#print(head(mtcars))

#Data and Aesthetics layer........


pl <- ggplot(df, aes(x=wt,y=mpg))

#print(pl + geom_point()) #by keeping blanck, it will return default size..

#size means to increase the size of data points............
#print(pl + geom_point(size=5))

#print(pl + geom_point(alpha=0.5,size=5))
#alpha used for transparency.........

#print(pl + geom_point(aes(size=hp)))

#print(pl + geom_point(aes(size=cyl)))
#but as the number of cylinders is even, so here to add factor cammand...

#print(pl + geom_point(aes(size=factor(cyl))))

#print(pl + geom_point(aes(shape=factor(cyl)),size=5))
#shape is used to have diffferent shapes for different variables..

#print(pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=5))
#to put different color in graph

#print(pl + geom_point(aes(shape=factor(cyl)),size=5,color='blue'))
#to have one color only, command outside aes().....

#pl2 <- pl + geom_point(size=5, color='purple')
#print(pl2)
#here hex color codes can be used..google for different colors...

#pl2 <- pl + geom_point(size=5, color='#56ea29')
#print(pl2)


pl2 <- pl + geom_point(aes(size=5, color=hp),size=5)
#print(pl2)
#to have higher tolower with different colors........

pl3 <- pl2 + scale_color_gradient(low='blue', high ='red')
print(pl3)
#here used command 'scale_color_gradient'











