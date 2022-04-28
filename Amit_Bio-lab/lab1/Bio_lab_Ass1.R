#ASS1 EX-1
library(readr)
str=read_file("DNA-Data.txt")
print(nchar(str))
pattern = "TGATCA"

#ASS1 EX-2(M-1)
PatternCount = function(str,pattern){
  c=0
  str_Length = nchar(str)
  pattern_Length = nchar(pattern)
  print(substring(str,i,pattern_Length))
  for(i in 1:str_Length - pattern_Length)
    if(substring(str,i,i+pattern_Length-1) == pattern)
      c=c+1;
  return(c)
}

print(PatternCount(str,pattern))

#ASS1 EX-2(M-2)
library(stringr)
print (str_count(str,pattern))

#ASS1 EX-3
FrequentWords= function(str,k){
  str1 = strsplit(str, split=NULL)[[1]]
  FrequentPatterns = c()
  Pattern1 = c()
  Count = integer()
  for (i in 1:(length(str1)-k+1)){
    Pattern=paste(str1[i:(i+k-1)],collapse="")
    Pattern1[i]=Pattern
    Count[i]=str_count(str,Pattern)
  }
  maxCount=max(Count)
  for (i in 1:(length(str1)-k+1)){
    if(Count[i]==maxCount){
      FrequentPatterns = c(FrequentPatterns, Pattern1[i])
    }
  }
  FrequentPatterns=FrequentPatterns[!duplicated(FrequentPatterns)]
  return(list(FrequentPatterns, maxCount))
  
}

print(unique(FrequentWords("GATCCAGATCCCCATAC",2)))

str=readline("Input Text:")
txt = as.character(str)

n = readline("Input k:")
k = as.integer(n)

print(unique(FrequentWords(txt,k)))


# CGATATATCCATAG  3 ATA Freq 3

# ACAACTATGCATACTATCGGGAACTATCCT 5 ACTAT Freq  3
