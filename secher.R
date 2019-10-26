folder<- "C:\\Users\\This PC\\Desktop\\secher"
file_list<-list.files(path=folder,pattern=".txt")
secher<-read.table("secher.txt", header=T)
model1<-lm(bwt~bdp, data=secher)
sum.model1<-summary(model1)
R2<-sum.model1$r.squared
f<-sum.model1$fstatistic
p.value<--pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model1$coefficients[1]
slope<-model1$coefficients[2]
output<-sprintf("slope = %f intercept = %f", slope, intercept)
cat(output)
png("graph1.png")
plot(bwt~bdp, data=secher)
abline(model1)
dev.off()
model2<-lm(bwt~ad, data=secher)
R2<-sum.model2$r.squared
f<-sum.model2$fstatistic
p.value<--pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model2$coefficients[1]
slope<-model2$coefficients[2]
output<-sprintf("slope = %f intercept = %f", slope, intercept)
cat(output)
png("graph2.png")
plot(bwt~ad, data=secher)
abline(model2)
dev.()