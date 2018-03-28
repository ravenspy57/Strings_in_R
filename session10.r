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

##Second lab

fruit = c("apple", "banana", "pear", "pineapple")

#2

#detects if the pattern is found
str_detect(fruit, "a") #if a is in the dataset
str_detect(fruit, "^a") #starts with a
str_detect(fruit, "a$") #ends with an a
str_detect(fruit, "[aeiou]") #contains any vowel, the [] represents the r
str_detect(fruit, "[a-d]") #contains any letter from a to d
str_detect(fruit, "[0-9]") #checks for numeric elements

#3
str_detect(fruit, "^a[a-z]{0,}e$")
#or
str_detect(fruit, "^a[a-z]*e$")
#or
str_detect(fruit, "^a.*e$") #the . means it could be any character or number

##4

phone = c("213 740 4826", "213-740-4826", "(213) 740 4826")
str_detect(phone, "[(]?[0-9]{3}[)]?.[0-9]{3}.[0-9]{4}")

?str_extract

str_extract_all(body, "[(]?[0-9]{3}[)]?.[0-9]{3}.[0-9]{4}")


