## Provides an intermediate list that can be assigned to a variable
## to which a square matrix, which has a determinant of zero, and it's inverse can be assigned
## and from which the assigned square  matrix and its inverse can be retrieved.


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