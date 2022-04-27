



if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("multtest", force=TRUE)

library(multtest)

data(golub)
 nrow(golub)

ncol(golub) 

agolub[1042,2]

golub[,1]

golub[1042,] # show data for row no 1042 (cols=38)

golub[1042,1:27]

gol.fac <- factor(golub.cl, levels=0:1, labels = c("ALL","AML"))

golub[1042,gol.fac=="ALL"]

meanALL <- apply(golub[,gol.fac=="ALL"], 1, mean)

grep("CD33",golub.gnames[,2])

class(golub)

class(golub[1,1])
