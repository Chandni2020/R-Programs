# to use select(), rename() and distinct()...........
#install.packages('dplyr')
#install.packages('nycflight13')

#print(library(dplyr))
#print(library(nycflights13))



print(head(flights))

print(head(select(flights,carrier)))

print(head(select(flights,carrier,arr_time,month)))

# rename function...........

print(head(flights,airline_carrier = carrier))

# distinct function...........

print(distinct(select(flights,carrier)))


# mutate function..........like to add a new column...
#mutate return the entire data frame along with new column

print(mutate(flights,new_col=arr_delay-dep_delay))


#transmute.......function......only returns the new column....

print(transmute(flights,new_col=arr_delay-dep_delay))

#summarise function.....

print(summarise(flights,avg_air_time = mean(air_time,na.rm =TRUE)))

print(summarise(flights,total_time = sum(air_time,na.rm =TRUE)))

#sample_n....function.....random number of rows....
print(sample_n(flights,10))

print(sample_frac(flights,0.1))
#samole_frac.....function.......random fraction of rows...



