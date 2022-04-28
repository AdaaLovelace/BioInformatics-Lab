if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.13")
BiocManager::install( "multtest")

library(multtest);
data(golub)
golub.gnames[1042,]
nrow(golub)
ncol(golub)
golub[1042,2]
golub[1042,1:27]
gol.fac <- factor(golub.cl, levels=0:1, labels = c("ALL","AML"))
meanALL <- apply(golub[,gol.fac=="ALL"], 1, mean)
meanALL[995]

#2
gene1 <- c(1.00,1.50,1.25)
gene2 <- c(1.35,1.55,1.00)
gene3 <- c(-1.10,-1.50,-1.25)
gene4 <- c(-1.20,-1.30,-1.00)
rowcolnames <- list(c("gene1","gene2","gene3","gene4"),  c("Eric","Peter","Anna"))
gendat <- matrix(c(gene1,gene2,gene3,gene4), nrow=4, ncol=3, byrow=TRUE, dimnames =rowcolnames)
gendat

# 2 A

col_sd <-apply(gendat,2,sd)
col_sd

#2 B

row_sd <-apply(gendat,1,sd)
row_sd


#2 C

o <- order(row_sd,decreasing=TRUE)
gendat[o,]

ordered_matix = gendat[order(apply(gendat, 1, sd)),]
ordered_matix

#2 D
row_sd
max(row_sd)



#3 1
means_gene <-apply(golub,1,mean)
means_gene
golub_1= data.frame(apply(golub, 1, mean)) # for list 


#3 2

golub1 = golub[order(apply(golub, 1, mean)),]
golub1

o <- order(means_gene,decreasing=TRUE)
golub[o,]

#3 3
golub.gnames[o[1:3],3]

# 3 4
golub.gnames[o[1:3],2]


#4 1



standard_devition <- apply(golub,1,sd)


max(standard_devition)

#4 2
greater_than_2 <- golub[standard_devition>2,]

#43

sum(greater_than_2)

# 5 1
length(agrep("^oncogene",golub.gnames[,2]))


# 5 2
data(golub, package="multtest")
rowindex <- agrep("^oncogene",golub.gnames[,2])
oncogol <- golub[rowindex,]
oncogolub.gnames <- golub.gnames[rowindex,]
gol.fac <- factor(golub.cl,levels=0:1, labels= c("ALL","AML"))
meangol <- apply(oncogol[,gol.fac=="ALL"],1,mean)
o <- order(meangol,decreasing=TRUE)
oncogolub.gnames[o[1:3],2]




# 5 3
meangol <- apply(oncogol[,gol.fac=="AML"],1,mean)
o <- order(meangol,decreasing=TRUE)
oncogolub.gnames[o[1:3],2] 


# 5 4
x <- oncogolub.gnames[o[1:10],c(3,2)]
colnames(x) <- c("probe ID","gene name")
write.csv(x,file="goluboutcsv")
write.table(x,file="goluboutnorowname",row.names=FALSE)


# 6 1
gl(2,4)
#  6 2
gl(5,3)

#  6 3
gl(3,5)

#  7 1
BiocManager::install("ALL")
library(ALL); data(ALL)
meanB1 <- apply(exprs(ALL[,ALL$BT=="B1"]),1, mean)
o <- order(meanB1,decreasing=TRUE)
str(meanB1)


# 7 2
meanB1[o[1:3]]

