# Excercise........ggplot2................

library(ggplot2)
library(ggthemes)

#Histogram of hwy mpg values:
#pl <- ggplot(mpg, aes(x=hwy))

#print(pl + geom_histogram(bins = 20, fill='red',alpha=0.5))
#alpha value for transparency...


#Barplot of car counts per manufacturer with color fill defined by cyl count

#pl <- ggplot(mpg, aes(x=manufacturer))

#print(pl + geom_bar(aes(fill=factor(cyl)))+theme_gdocs())


#Switch now to use the txhousing dataset that comes with ggplot2

#Create a scatterplot of volume versus sales. Afterwards play around with 
#alpha and color arguments to clarify information.
#head(txhousing)

pl <- ggplot(txhousing, aes(x=sales,y=volume))
print(pl + geom_point(color='blue',alpha=0.3))

#Add a smooth fit line to the scatterplot from above. Hint: You may need 
#to look up geom_smooth()

print(pl + geom_point(color='blue',alpha=0.5)+geom_smooth(color='green'))


