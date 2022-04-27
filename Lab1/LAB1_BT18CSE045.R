# Import readr library
library(readr)

# read dna data from the file in dna 
dna <- read_file("D:/SEM8/BIOINFOMATICS/Lab/Lab1/DNA-Data.txt")

#Q 1: Print the length of the DNA-Data.txt
len <- nchar(dna)
print("length of the DNA-Data.txt is : ")
len

#Q 2: Print  the number of times that the string Pattern = "TGATCA" occurs in the string Text.
library("stringr")

print(paste("que2: ", str_count(dna, "TGATCA"))) 


#Q 3:The Frequent Words Problem

# 3.1: Find the most frequent 2-mer of "GATCCAGATCCCCATAC"
library("hash")

Kmers <- function(t, n){
  
  h <- hash()
  text <- t
  k <- n
  for (x in k:nchar(text)){
    if(has.key(substr(text, x-k+1, x), h)){
      h[[substr(text, x-k+1, x)]] <- h[[substr(text, x-k+1, x)]] + 1
    }else{
      h[[substr(text, x-k+1, x)]] <- 1
    }
     
  }
  return(h)
}

mostFrequentKmer <- function(t, n){
  H <- Kmers(t, n)
  val <- unlist(as.list(H))  # convert to list and to named vector
  return(names(val[val == max(val)]))
}

text = "GATCCAGATCCCCATAC"
print(paste("que3.1: ", mostFrequentKmer(text, 2)))

# 3.2: Find the most frequent k-mers in a string.


text = toupper(readline())
text = dna
print(paste("que3.2: "))
for(n in 2:4){
  print(paste("most frequent",n,"- mer"))
  print(mostFrequentKmer(text, n))
}
