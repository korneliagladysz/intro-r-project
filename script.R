#09-23-2017
x <- 2
x <- 2+2
x <- c(1,3,5)
x <- 1:5 

getwd() # shows you where you are now
dir() # list you things which are in your directory
unzip("data/r-novice-inflammation-data.zip")
my_data <- read.csv("data/inflammation-01.csv", header = F )

head(my_data)
(rows_cols <- dim(my_data)) # it prints you number of rows and columns

class(my_data) # it tells you which type of variable you have

my_data[1,1] #prints first row and first column

my_data[1:5, 1]
my_row <- my_data[c(1,2,3,4,5),1]
my_data[c(1,3,5), c(2,4,6)]
my_data[c(1,3,5), ] # print 3 rows and all columns
my_data[, c(2,4,6)] #print only 3 columns and all rows

my_data[,c("V1","V2","V3")] # to select three columns which we want

col_17 <- my_data$V17
class(col_17)

mean(col_17)
sd(col_17)
median(col_17)
summary(col_17)


mean(my_data[1:3,3]) #get a mean of several rows



summary(my_data[1:4,c(1,2,3)])
max(my_data[3:7, 5]) #depends if patients are rows or columns
max(my_data[5, 3:7])


x <- 5:1
x[x <3]
my_col <- my_data[,2]
my_data[my_col==0,2] # take the second column and the values in row which is 0
sub_col <- my_col[my_col==0]

other_sub_col <- my_col[my_col != 0]
length(sub_col)
length(other_sub_col)
sum(other_sub_col)
sum(sub_col)
length(sub_col)+length(other_sub_col)
length(my_col)
dim(my_data[,c(-1,-2,-3)])

x[-3] # it deletes a variable from a row 

my_data$x <- my_data$V1+my_data$V2 #it add x column with a sum of the two columns
dim(my_data)

(x[1] <- 0) #it change the first variable in our list to 0
x[1:3] <- c(1,2,3)
