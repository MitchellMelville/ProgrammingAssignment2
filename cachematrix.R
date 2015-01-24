## This is the second Programming Assingment 
## functions 

## Creates a matrix and four place holders for the matrix itself, and the inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<- function(y){
    x<<-y
    m<<-NULL
  }
  get <- function() x
  setInverse<- function(Inverse) m<<-Inverse
  getInverse<- function () m
  list(set=set, get= get, setInverse= setInverse, getInverse= getInverse)
}



## stores the calculated values of the inverse as cacheSolve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'  
  n<-x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setInverse(m)
  
}
