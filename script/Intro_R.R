dir.create("data")
dir.create("script")
dir.create("results")
print("Biotechnology")
gene_expression <- c(2.3,3.8,3.9,5.6,9.4)
mean(gene_expression)
mean_result <- mean(gene_expression)
plot(gene_expression)
hist(gene_expression)
barplot(gene_expression)
summary(gene_expression)
x <- 24.5
class(x)
z <- 24L 
class(z)
numeric <- c(2,3,4)
class(numeric)
integer <- c(2L,3L,5L)
class(integer)
var_1 <- c(28.4, 23.7, 2.9)
class(var_1)
var_2 <-as.integer(var_1)
class(var_2)
var_4 <- c("gene1", "gene2", "gene3")
class(var_4)
var_6 <- c("3.8", "4.6", "5.9")
class(var_6)
disease_status <- c("cancer", "normal", "cancer", "cancer", "normal")
class(disease_status)
disease_status <-  as.factor(disease_status)
class(disease_status)
disease_status <- factor(disease_status, 
                         levels = c("normal", "cancer"))

data <- read.csv(file.choose())
View(data)
str(data)



Data <-read.csv(file.choose())
View(Data)
str(Data)
data$height_fac <- as.factor(data$height)
str(data)


data <-read.csv(filoe.choose())
View(data)
str(data)
data$height_fac <- as.factor(data$height)
str(data)
data$height_fac <- factor(data$height_fac, levels =c("Tall","Medium",
                                                     "Short"))
levels(data$height_fac)


data$height_fac <- factor(data$height_fac , levels =c("Tall","Medium","Short") , labels =c(0,1,2))
data$gender_fac <- as.factor(data$gender)
str(data)


data$height_fac <- factor(data$height_fac , levels =c ("Tall" , "Medium" , "Short") , labels =c(0,1,2))
data$gender_fac <- as.factor (data$gender)
str(data)
write.csv(disease_status, file = "results/patient_data.csv")
save.image(file = "full_workspace.RData")
save(gene_expression, disease_status, file = "workspace.RData")
load("workspace.RData")
load("full_workspace.RData")
