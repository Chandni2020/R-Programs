# Data Visualization with R----Barplots....


library(ggplot2)
df <- mpg

pl <- ggplot(df,aes(x=class))

#print(pl + geom_bar(color='blue',fill='blue'))

print(pl + geom_bar(color='blue',fill='blue'))


#print(pl + geom_bar(aes(fill=drv),position = 'dodge'))

#print(pl + geom_bar(aes(fill=drv),position = 'fill'))
#fill to see percentage......

print(pl + geom_bar(aes(fill=drv)))
