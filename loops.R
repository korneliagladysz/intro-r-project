dir("data/")
read.csv("data/inflammation-01.csv")
read("data/inflammation-02.csv")


for (i in c(1,3,5)) {
  print(i=1)
}


some_files <- dir("data/")


analyze <- function(filename) {
  data <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(data, 2, mean)
  plot(avg_day_inflammation)
}

inflammation_files <- c("data/inflammation-01.csv",
                        "data/inflammation-02.csv",
                        "data/inflammation-03.csv")
for(filename in inflammation_files ) {
  analyze(filename)
}

all_inflammation_files <- dir(
  path="data",
  full.names = T,
  pattern = "^inflammation"
)


sum(x)
sum_x <- 0
for(i in x){
  cat("i:",i,"\n")
  cat("sum_x:", sum_x,"\n")
  sum_x <- sum_x+1
}
#\n add new line


sum_x <- 0 
sum_x <- sum_x +x[1]
sum_x <- sum_x +x[2]
sum_x <- sum_x +x[3]
sum_x <- sum_x +x[4]
sum_x <- sum_x +x[5]
sum_x <- sum_x +x[1]



exponentiate <- function(x,y) {
  result <- 1
  for(i in 1:y) {
    result <- result*x
  }
    return(result)
}


product <- function(x,y){
  result <- 0
  for(i in 1:y){
    result <- result+x
  
  }
  return((result))
}
product(9,0)

print_N <- function(N) {
  for(i in 1:N){
    print(i+1)
  }
}
print_N(8)




dat <- read.csv("data/inflammation-01.csv", header = F)
patient_mean <- apply(dat, 2,mean)
patient_mean_function <- function(filename){
  dat <- read.csv(filename, header = F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[,i])
    
  }
  plot(means, main = filename)
}
patient_mean_function("data/inflammation-01.csv")


x<- 10:1
N <-length(x)
y <- 9:0

for(i in 1:N){
  print(x[i])
  print(y[i])
  
}
for(i in 1:N){
  print(i)

}

for(i in x){
  print(x)
  
}


#this function plots the mean inflamation of each patient across all days

analyze_all_days <- function(filename){
  data <- read.csv(filename, header = F)
  rows_cols <- dim(files)
  dat_cols <- rows_cols[1]
  means <- numeric(dat_cols)
  for(i in filename){
    means[i] <- mean(dat[,i])
  }
  plot(means, main = filename)
}
analyze <- function(filename) {
  for i in filename{
  }
  data <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(data, 2, mean)
  plot(avg_day_inflammation)
}

#this function plots the mean inflamation of each day across all patients
analyze <- function(filename) {
  dat <- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  mean_day <- numeric(dat_cols)
  for (i in 1:dat_cols) {
    col_i <- dat[,i]
    mean_day[i] <-mean(col_i)
    
    
  }
  plot(mean_day, main = filename)
}








pdf("inflammation-02.csv")
analyze("data/inflammation-02.csv")
dev.off()
