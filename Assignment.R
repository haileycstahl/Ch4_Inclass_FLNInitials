data<- read_csv("C:/Users/haile/Downloads/Wine.zip")
numericaldata<-subset(data,select=-c(Type))

# Not Normalized
pca<-prcomp(numericaldata)
summary(pca)
pca$rot[,1:5]


#Normalized

pcanorm<- prcomp(numericaldata,scale. = T)
summary(pcanorm)
pcanorm$rot[,1:5]
