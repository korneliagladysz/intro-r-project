#Review of R


# ----------- Assigment ----------- #
x <- 3
y <- 1

z <- x + y


# ---------- Functions ----------

square <- function(x){
  return(x^2)
}
square(5)


# ------ Conditionals ------- 

isOdd <- function(x) {
  if (x%%2 ==1) {
    return(TRUE)
  } else {
    return(FALSE)
  }}
  
# -------------For - loops ---- 

#Summing up the elements in a vector 
mySum <- function(v){
  acc <- 0 
  for (x in v) {
    acc <- acc+x
  }
  return(acc)
}

mySum(1:10)  
  
  
#---- Indexing
x<- c(1,2,3,4)
  

#[] indexing
# () function arguments
#{ } control flow


