library(qualV)
library(stringi)
library(readr)
# str__a = "aaccttgg"
# str__b = "acactgtga"
str__a = read_file("C:/Users/ak781/Desktop/BIo Info/lab2/str1.txt")
str__b = read_file("C:/Users/ak781/Desktop/BIo Info/lab2/str2.txt")
# str3 = read_file("C:/Users/ak781/Desktop/BIo Info/lab2/str3.txt")
print(nchar(str__a))
print(nchar(str__b))
str_a = strsplit(str__a, split=NULL)[[1]]
str_b = strsplit(str__b, split=NULL)[[1]]
result = (LCS(str_a,str_b))
str = result[4]
typeof(str)
str <- stri_join_list(str,sep="")
print(str)
print(nchar(str))
sink("C:/Users/ak781/Desktop/BIo Info/lab2/answer.txt")
cat(str)
sink()
# print(nchar(str3))
file.show("answer.txt")
