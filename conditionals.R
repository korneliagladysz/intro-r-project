#Conditionals in R
#by Arjun Biddanda

num <- 3

if (num>5){
  print("greater than 5!")
  
} else {
  print("try again!!!")
}


num <- 53
if (num > 100){
  print ("greater than 100")
}

#Exercise 

#function to return 0 -1 or 1 base on a sign of the input integer Call the function "sign"


sign <- function(num) {
  if (num > 0) {
    return(1)
  } 
  if (num < 0) {
    return (-1)
  } else {
    return(0)
  } 
}




if (1 > 0 & -1 > 0){
  print("Both parts are true")
  
} else{
  print("at least one part is false")
}



if (1 > 0 | -1 > 0){
  print("At least one is true")
  
} else{
  print("both parts are false")
}


###
if(1>0) {
  if (-1>0){
    
    print("both are true")
    
  } else {
    print("at least one is false")
    
 } else {
   print("at least one is false")
 }}


#Grabbing odd numbers

n100 <- seq(1,100)
n100[n100 %%2 ==1]
getOdd <- function(v){
  return(v[v %% 2 == 1])
}



#loops and if 

#exercise

#write a function which take 3 argumets :
#v - a vector of integers
#x - a number to check for even divisibility
#y - a second number to check for even divibility
#output should be all numbers that are evenly divisible by both x and y
#example double_div(c(1,2,3,4),2,4) => [4]
#for loop

double_div <- function(v,x,y) {
  for (i in v) {
    if ((i%%x==0) & (i %% y ==0)) {
      print(i)
  }
    } 
}

double_div_2 <- function(v,x,y){
  return(v[(v %% x==0) & (v%%y ==0)])
}
#Write a function which takes in 1 
