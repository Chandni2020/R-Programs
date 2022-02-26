# Coordinates and faceting........

# coordinates allow us to resize our plots correctly
#Faceting allow us to place several plots next to each other


library(ggplot2)

#pl <- ggplot(mpg, aes(x=displ,y=hwy)) + geom_point()

#print(pl)

#pl2 <- pl+coord_cartesian(xlim = c(1,4),ylim = c(15,30))
#print(pl2)


#pl2 <- pl+coord_fixed(ratio = 1/3)
#print(pl2)
#ratio means y/x points ratio.....


# about facets............

pl <- ggplot(mpg, aes(x=displ,y=hwy)) + geom_point()
#print(pl)

#print(pl+facet_grid(. ~cyl))
#what you want on y-axis(.), and what on x-axis(~)

#print(pl+facet_grid(drv ~ .))
#here result is on y-axis

print(pl+facet_grid(drv ~ cyl))
#here two dimensional result, if period is not there...






