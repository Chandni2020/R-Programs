#nstall.packages('tidyr')....used for cleaning
#install.packages('data.table')


#gather().................
#data from notes........
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
#print(df)


print(gather(df,Quarter,Revernue, Qtr1:Qtr4))

#or
print(df %>% gather(Quater,Revernue,Qtr1:Qtr4))

#....spread().........
#data from notes........
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

print(head(stocks))

stocks.gathered <- stocks %>% gather(stock,price,X:Z)
print(head(stocks.gathered))

#using pipe operator
print(stocks.gathered %>% spread(stock,price))

#without pipe operator

print(spread(stocks.gathered,time,price))

#separate...........regular expression or vector of character positions...
df <- data.frame(new.col=c(NA,'a.x','b.y','c.z'))
print(df)

print(separate(df,new.col,c('ABC','XYZ')))

df <- data.frame(new.col=c(NA,'a-x','b-y','c-z'))
print(df)

print(separate(data=df,col=new.col,into=c('abc','xyz'), sep = '-'))

#unite..............
df.sep <- separate(data=df,col=new.col,into=c('abc','xyz'))
print(df.sep)

print(unite(df.sep,new.joined.col,abc,xyz))

print(unite(df.sep,new.joined.col,abc,xyz,sep='---'))