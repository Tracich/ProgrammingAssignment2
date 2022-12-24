## Provides an intermediate list that can be assigned to a variable
## to which a square matrix, which has a determinant of zero, and it's inverse can be assigned
## and from which the assigned square  matrix and its inverse can be retrieved.
## Inverse of included matrix can also be obtained.


## Given an argument the function returns a list.


makeCacheMatrix <- function(x = matrix()) {
  
  inv <- matrix()
  
  set <- function(y) {
    x <<- y
    inv <- matrix()
  }
  get <- function() {x}
  
  setinv <- function(xinverse) {inv <<- xinverse}
  getinv <- function() {inv}
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


##Returns an inverse of a square matrix with determinant value of zero.
##The matrix is assigned to variable x, which is a list returned by makeCacheMatrix function.

cacheinverse <- function (x) {
  
  inv <- x$getinv()
  if(!(dim(inv) == c(1,1))[1]){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv

}