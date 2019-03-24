setwd("C:\\Users\\Jyothi\\Desktop\\Jigsaw\\R\\Class Datasets")
library(ggplot2)

data("iris")
str(iris)
#A simple scatter plot
p<-ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))
p+geom_point()

#To get scatter plot of 2 numeric variables
p<-ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width, colour=Species))
p+geom_point()+xlab("Sepal length")+ylab("Sepal Width")
p+geom_point()+xlab("Sepal length")+ylab("Sepal Width")+facet_grid(Species~.)

#To get histogram of one numeric variable
p<-ggplot(iris,aes(x=Sepal.Length))
p+geom_histogram()
p+geom_histogram(aes(fill=Species),position="dodge")
p+geom_histogram(aes(fill=Species,position="dodge"),aplha=0.3)+facet_grid(Species~.)               

#To do boxplot with one numeric & multiple factor variables
p<-ggplot(iris,aes(y=Sepal.Length,x=Species,fill=Species))
p+geom_boxplot()
p+geom_boxplot()+facet_grid(Species~.) # works well if we have one more variable to compare

#To get density plots
options(scipen=999)
p<-ggplot(iris,aes(x=Sepal.Length))
p+geom_density()
p+geom_density(aes(fill=Species,colour=Species),alpha=0.4)

#Heatmaps using double density parameter
p<-ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))
p+geom_bin2d()