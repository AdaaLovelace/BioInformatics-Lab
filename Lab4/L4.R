if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("multtest", force=TRUE)

library(multtest)
data(golub, package = "multtest")
golub.gnames[1042,] 
ncol(golub)
nrow(golub)
golub[1042,2]
golub[,2]
golub[,1]

golub[1042,1:27]

gol.fac <- factor(golub.cl, levels=0:1, labels = c("ALL","AML"))

golub[1042,gol.fac=="ALL"]

meanALL <- apply(golub[,gol.fac=="ALL"], 1, mean)
class(golub)
class(golub[1,1])
class(golub.cl)
class(golub.gnames)
class(apply)
class(exp)
gol.fac <- factor(golub.cl, levels=0:1, labels = c("ALL","AML"))
class(gol.fac)
class(plot)
class(ALL)

#2
gene1 <- c(1.00,1.50,1.25)
gene2 <- c(1.35,1.55,1.00)
gene3 <- c(-1.10,-1.5,-1.25)
gene4 <- c(-1.20,-1.30,-1.00)
rowcolnames <- list(c("gene1","gene2","gene3","gene4"), c("Eric","Peter","Anna"))
gendat <- matrix(c(gene1,gene2,gene3,gene4), nrow=4, ncol=3,  byrow=TRUE, dimnames = rowcolnames)
gendat
apply(gendat, 2, sd) #sd for person
apply(gendat, 1, sd) #sd for genes

sdVal<- apply(gendat,1,sd)
o <- order(sdVal,decreasing=TRUE) # order sdval in decreasing order  
o
gendat[o,] 

gendat[o,1] #gene2 has largest sd

#3
meanOfGolub <- apply(golub,1,mean) # mean of genes
meanOfGolub

orderedGolub <- order(meanOfGolub, decreasing = TRUE)
golub[orderedGolub,]

golub.gnames[orderedGolub[1:3],3]


golub.gnames[orderedGolub[1:3],2]

# 4

sdgolub <- apply(golub,1,sd)
sdgolub
class(sdgolub)

# select genes whose sdgolub > 2
golubsd <- golub[which(sdgolub > 2)]
golubsd
# how many genes have this property
length(golubsd)

#5
length(agrep("^oncogene",golub.gnames[,2]))

gol.fac <- factor(golub.cl,levels=0:1, labels= c("ALL","AML"))

rowindex <- agrep("^oncogene",golub.gnames[,2])
oncogol <- golub[rowindex,]
oncogolub.gnames <- golub.gnames[rowindex,]
meangol <- apply(oncogol[,gol.fac=="ALL"],1,mean)
meangol

meangol <- apply(oncogol[,gol.fac=="AML"],1,mean)
meangol

x <- golub.gnames[orderedGolub[1:10],c(3,2)]
colnames(x) <- c("probe ID","gene name")
write.csv(x,file="D:\\SEM8\\BIOINFOMATICS\\Lab\\Lab4\\golubout.csv")
read.csv(file = "D:\\SEM8\\BIOINFOMATICS\\Lab\\Lab4\\golubout.csv")

# 6
gl(2,5)
gl(5,3)
gl(3,5)

# 7

BiocManager::install("ALL", force=TRUE)
library(ALL);
data(ALL)
meanB1 <- apply(exprs(ALL[,ALL$BT=="B1"]),1, mean)
o <- order(meanB1,decreasing=TRUE)
o
meanB1[o[1:3]]
