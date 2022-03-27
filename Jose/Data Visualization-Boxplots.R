library(ggplot2)
df <- mtcars

pl <- ggplot(df,aes(x=factor(cyl),y=mpg))
#print(pl+geom_boxplot())

#print(pl+geom_boxplot()+coord_flip())
#coord_flip is used to flit axis of graph

#print(pl+geom_boxplot(fill='blue'))

print(pl+geom_boxplot(aes(fill=factor(cyl))) + theme_bw())
#theme_bw is used for background color