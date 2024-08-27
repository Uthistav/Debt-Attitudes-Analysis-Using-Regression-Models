# Import necessary libraries
library(tidyverse)
library(ggplot2)

install.packages("faraway")

# Import faraway library
library(faraway)

# load dataset "debt"
data(debt)
?debt


# Check for missing values in the dataset
missing_values <- colSums(is.na(debt))
print(missing_values)

# Create a cleaned dataset by removing observations with missing values
cleaned_debt <- na.omit(debt)

# Check the dimensions of the cleaned dataset
dim(cleaned_debt)

# Save the cleaned dataset to a new file (optional)
write.csv(cleaned_debt, "cleaned_debt.csv")

# install.packages("GGally")
library(GGally)

# Create a summary plot of all variables
ggpairs(debt)

# Create a scatter plot of locintrn vs. prodebt
ggpairs(debt, columns = c("locintrn", "prodebt"))

# Fit a linear regression model using only locintrn
model1 <- lm(prodebt ~ locintrn, data = debt)

# Summary of the model
summary(model1)

# Fit a linear regression model with locintrn and manage as predictors
model2 <- lm(prodebt ~ locintrn + manage, data = debt)

# Summary of the model
summary(model2)


# Fit a linear regression model with locintrn, manage, and children as predictors
model3 <- lm(prodebt ~ locintrn + manage + children, data = debt)

# Summary of the model
summary(model3)

# Fit a linear regression model with locintrn, manage, children, and singpar as predictors
model4 <- lm(prodebt ~ locintrn + manage + children + singpar, data = debt)

# Summary of the model
summary(model4)

# Fit a linear regression model with locintrn, manage, children, singpar, and agegp as predictors
model5 <- lm(prodebt ~ locintrn + manage + children + singpar + agegp, data = debt)

# Summary of the model
summary(model5)

