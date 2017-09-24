 #Functions in R

#by

fahr_to_kelvin <- function(temp) {
  kelvin <- 273.15 + ((temp - 32)*(5/9))
  return(kelvin)
}

fahr_to_kelvin(32)
fahr_to_kelvin(212)


kelvin_to_celsius <- function(t) {
  celcius <- t - 273.15
  return(celcius)
  
}
kelvin_to_celsius(0)

cel_to_fahr <- function(temp_c) {
  fahr <- temp_c * 9/5 +32 
  return(fahr)
}

cel_to_fahr(0)

fahr_to_celcius <- function(temp) {
  kelvin <- fahr_to_kelvin(temp)
  celcius <- kelvin_to_celsius(kelvin)
  return(celcius)
  
  
}
fahr_to_celcius(32)
fahr_to_kelvin(32)
kelvin_to_celsius(fahr_to_kelvin(32))





y <- c(1,2,3)
c(y, 4) # it append 4 to our vector 



#Exercise 

#Define a function "fence" which take two vectors and returns the second vector concatenated to the first
a<- c(6,8,10)
b<-c(1,2,3)
fence <- function(a,b) {
  vector <- c(a,b)
  return(vector)
}
e<- c(6,8,10)
h<-c(1,2,3)
fence(h,e)


test_vec1 <- c("Life","is","amazing")
test_vec2 <- c(12,15,32,3)
input_1 <-20
mySum <- function(input_1, input_2 = 20) {
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}
mySum(input_1 = 1, 3)
mySum(7)

#Function to center my data
center <- function(data, desired) {
  #return a new vector containing original data centered around 
  #the desired value 
  #Example : center(c(1,2,3), 0) => c(-1,0,1)
  new_data <- (data - mean(data)) + desired
  return(new_data)
}
z <- c(0,0,0,0)
z
center(z,2)

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat[,4], 0)



sd(centered) #center our data , but shouldnt change anything about the data 
sd(dat[,4])

sd(centered) == sd(dat[,4])



#Apply -------- Functions ------
patient_1 <- dat[1,]
#summary(dat[,1:4])
avg_day_inflammation <- apply(dat, 2, mean)
#1 is apply for rows, 2 is apply for columns
head(avg_day_inflammation)
plot(avg_day_inflammation)


max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)


#APPLY to calculate median of expression level in different replicates
#exercise 
#create a fucntion called analyze whose input is the name of a dataset (e.g. "data?inflammation-01.csv) 
#and output a plot of mean inflammation per day

analyze <- function(data_set = read.csv("data/inflammation-01.csv")) {
  avg_day_inflammation <- apply(data_set, 2, mean)
  #take the mean of each column
  plot(avg_day_inflammation)
}
analyze(my_data)


analyze <- function(filename) {
  data <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(data, 2, mean)
  plot(avg_day_inflammation)
}
