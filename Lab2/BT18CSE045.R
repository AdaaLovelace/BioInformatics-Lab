library(qualV,stringi,readr)

str__a = read_file("D:/SEM8/BIOINFOMATICS/Lab/Lab2/str1.txt")
str__b = read_file("D:/SEM8/BIOINFOMATICS/Lab/Lab2/str2.txt")

print(nchar(str__a))
print(nchar(str__b))
str_a = strsplit(str__a, split=NULL)[[1]]
str_b = strsplit(str__b, split=NULL)[[1]]
result = (LCS(str_a,str_b))

#str = result[4]
#typeof(str)
#str <- stri_join_list(str,sep="")
print(result[4])
print(result[3])
#cat(str)


