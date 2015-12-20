# Manoj Pandey
# Quiz #1

# Load dataset
data <- read.csv("hw1_data.csv", header = TRUE)

# In the dataset provided for this Quiz, 
# what are the column names of the dataset?
colnames(data)

# Extract the first 2 rows of the data frame and print them to the console. 
# What does the output look like?
data[1:2,]

# How many observations (i.e. rows) are in this data frame?
nrow(data) # or look in RStudio Env

# Extract the last 2 rows of the data frame and print them to the console. 
# What does the output look like?
tail(data, 2)

# What is the Ozone value in the 47th row?
data[47,1]

# How many missing values are in the Ozone column of this data frame?
sum(is.na(data[1]))

# What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.
mean(dat$Ozone[!is.na(dat$Ozone)])

# Extract the subset of rows of the data frame where Ozone values are above 31
# and Temp values are above 90. What is the mean of Solar.R in this subset?
mean(subset(dat, Ozone>31 & Temp > 90)[,2])

# What is the mean of "Temp" when "Month" is equal to 6?
mean(subset(dat, Month==6)[,4])

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(dat$Ozone[dat$Month == 5 & !is.na(dat$Ozone)])