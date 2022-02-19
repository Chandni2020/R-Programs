#....Pipe operator (%>%)...........

print(library(dplyr))

df <- mtcars

# Nesting.......one way

result <- arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))

print(result)

#multiple assignmnets.......second way.

a <- filter(df, mpg>20)
b <- sample_n (a, size =5)

result <- arrange(b,desc(mpg))

print(result)

#...pipe operator...third way.....
# data %>% op1 %>% op2 %>% op3

result <- df %>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))
print(result)
