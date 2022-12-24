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