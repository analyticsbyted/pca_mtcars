head(mtcars)

# Exercise 1
# How many categorical variables to be excluded from dataset

data(mtcars)
str(mtcars)

### There are 32 observations and 11 features in the dataset

summary(mtcars)
###  The 2 categorical variables are 'vs' and 'am'.

mtcars1 <- mtcars[, c(1:7,10,11)]
str(mtcars1)

#### Exercise 3
# conduct PCA on the new dataset by passing 1 arguments, 'center'
# and 'scale' to be TRUE.

mtcars1.pca <- prcomp(mtcars1, center = TRUE, scale = TRUE)
summary(mtcars1.pca)
#  The first 4 principal components are enough to explain 
#about 94.5% of the variance in the data. thus it will be
# appropriate to retain the first 3 (or four) principal components

