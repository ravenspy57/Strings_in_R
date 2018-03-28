library(stringr)

# 1
print("DSO")
print("\"") #\ is the escape character
cat("\"") #cat is another function for printing

cat("DSO\n545") #n represents a new line
cat("DSO\t545") #t is a tab

#2

cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3

?str_locate
?str_sub

#4

str_locate(string = "great", pattern = "a")
#or
str_locate("great", "a")

str_locate("fantastic", "a")
str_locate_all("fantastic", "a")

str_locate("suer", "a")

#to locate for multiple strings at a time
str_locate(c("fantastic", "great", "super"), pattern = "a")

#5

str_sub("testing", start = 1, end = 3)
str_sub("testing", 4, 7)
str_sub("testing", 1, 4)
str_sub("testing", end = 4) #if you don't specify a start or an end, it will take it to/from
#the beginning or to the end

#6
input = c("abc", "defg")
str_sub(input, c(2,3)) #c(2,3) tells the str_sub function where to start for each element.
#since we dont' specify the end, the function prints from the start to the end.


#7
emails = readRDS("email.rds")
emails[1]
cat(emails[1])

str_locate(emails[1], "\n\n")

##8
cat(emails[1])
str_locate_all(emails[1],"From")
str_locate_all(emails[1], "Chart")
#874, 1012
header = str_sub(emails[1], 874, 1012)
cat(header)

str_locate_all(emails[1], "Janet")
#1015, 1334
str_locate_all(emails[1], "Jim")
body = str_sub(emails[1], 1015, 1334)
cat(body)

#OR
header1 = str_sub(emails[1], start = 1, end = 842)
cat(header1)

body1 = str_sub(emails[1], start = 843)
cat(body1)

#10
split = str_locate(emails, "\n\n")
header = str_sub(emails, end = split[,1])
body = str_sub(emails, start = split[,2])

cat(body[1])
