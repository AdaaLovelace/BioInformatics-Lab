#read file
f <- read.delim("F:/my_files/BioInformatics/DNA-Data.txt", header = FALSE)

#que 1
print(paste("que1: ", nchar(f)))

#que 2
#print(lengths(regmatches(f, gregexec("TGATCA"))))
library("stringr")

print(paste("que2: ", str_count(f, "TGATCA")))

#que 3-1
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

#que 3-2
text = toupper(readline())

print(paste("que3.2: "))
for(n in 2:4){
  print(paste("most frequent",n,"- mer"))
  print(mostFrequentKmer(text, n))
}