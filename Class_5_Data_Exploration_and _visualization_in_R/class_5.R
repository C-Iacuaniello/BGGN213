#' ---
#' title: "Class 5"
#' author: "Caroline Iacuaniello"
#' ---
#' 
# PLotting/plots

# * above means 'content isnt sealed' 
x <- rnorm(1000, 0)
# distribution of data points, mean of 0
mean(x)
sd(x)
summary(x)

boxplot(x)
# histogram
hist(x)

# section 1 from lab sheet
baby <- read.table("bggn213_05_rstats/weight_chart.txt")
View(baby)
plot(baby, type = "b", pch = 15, cex=1, ylim=c(0,1), lwd=1)
feat <- read.table("bggn213_05_rstats/feature_counts.txt", sep="\t", header=TRUE)
View(feat)
par(mar=c(5,11,4,2))
barplot(feat$Count, names.arg=feat$Feature, horiz = TRUE,las=2)
male_female <- read.table("bggn213_05_rstats/male_female_counts.txt", header=TRUE,sep="\t")
View(male_female)
barplot(male_female$Count,col = c("blue2","red2"))
View(male_female)
mcols <- rainbow(nrow(male_female))
barplot(male_female$Count, col=mcols)
up <- read.delim("bggn213_05_rstats/up_down_expression.txt")
View(up)
plot(up)
plot(up[2:3])
unique(up$State)
table(up$State)
palette(c("black", "green3", "blue"))
plot(up$Condition1, up$Condition2, col=up$State)

