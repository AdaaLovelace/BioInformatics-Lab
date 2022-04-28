
library(readr,qualV,stringi)
a  = read_file(“str1.txt”)
b  = read_file(“str2.txt”)
a <- strsplit(a, split=NULL)[[1]]
b <- strsplit(b, split=NULL)[[1]]
ans <-(LCS(a,b))
ans <- ans["LCS"]
ans <- stri_join_list(ans,sep="")
print(ans)

inp = read_file("input.txt")
str_1 = strsplit(inp, split = " ")[[1]][1]
str_2 = strsplit(inp, split = " ")[[1]][2]
one <- strsplit(str_1, split=NULL)[[1]]
two <- strsplit(str_2, split=NULL)[[1]]
ans <-(LCS(one,two))
res <- ans["LCS"]
typeof(res)
res <- stri_join_list(str,sep="")
print(res)
fileConn<-file("output.txt")
writeLines(res, fileConn)
close(fileConn)
