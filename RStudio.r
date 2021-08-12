
nrow(g)
ncol(g)
dim(g)

str(g)

g$immi[1:20]

head(g$immi)

tail(g$immi,10)

g[3,2]
 summary(g)

#dictionnaire des codes : 1= immigr? et 2 = non immigr?#
g$immigration <- factor (g$immi,levels=c(1,2), label=c("Immigr?","Non immigr?"))
class(g$immigration)

levels(g$immigration)

table(g$immigration)

View(g)

head(g$sexe)
tail(g$sexe,10)
g$francais <- factor (g$sexe, levels=c(1,2), label=c("Homme","Femme"))

table(g$francais,useNA="ifany")

table(g$ddipl,useNA="ifany")

g$diplome <- factor (g$ddipl, levels=c(1,3,4,5,6,7), label=c("Bac","Bac+3","Bac+4","Bac+5","Bac+6", "Doctorat"))
table(g$diplome, useNA="ifany")

tapply(g$diplome,g$francais, summary)

summary(g)


##cours du 31-03-21""
summary(g$ag)
class (g$ag)
table(g$ag)

##diapo 100##
g$agego <- cut(g$ag,6)
table(g$agego, useNA="ifany")
g$agego_dec <- cut(g$ag,c(15,25,35,45,55,65,75,85,95),include.lowest=TRUE)
table(g$agego_dec, useNA="ifany")
g$agego_dec<- cut (g$ag, c(15,25,35,45,55,65,75,85,95),include.lowest=TRUE,right=FALSE)
table(g$agego_dec)

g$agego_dec<- cut(g$ag, c(15,25,35,45,55,65,75,85,95), include.lowest=TRUE, right=FALSE, labels=c("15-24","25-34","35-44","45-54","55-64","65-74","75-84","+85"))
table(g$agego_dec, useNA="ifany")

barplot(table(g$agego_dec),main="R?partition de la population par classes d'?ge", xlab="Ages", ylab="Effectifs", col="magenta", ylim=c(0,800))

boxplot(g$ag, col="blue", main="Bo?te ? moustache des ?ges", xlab="Ages", horizontal = TRUE)
## la valeur la plus ? gauche est le premier quartile, la valeur toute ? droite repr?sente le troisi?me quartile, la barre au centre repr?sente la m?diane##

##boite ?  moustache bivari?e##
boxplot(g$ag ~ g$sexe, col="green", main= "Boite ? moustache des ?ges", ylab= "Ages") #c'est ?quivalent au tri crois?#

hist( g$ag, prob = F, main= "Histogramme des ?ges", col = "yellow", xlab = " ", ylab= "Effectifs")

plot(g$ag, xlab= "Effectifs", ylab= "Ages", col="red")

g <- read.csv("C:/Users/marie/Downloads/ee2013_extraits-1.csv")


