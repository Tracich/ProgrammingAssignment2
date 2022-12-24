## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

source("makeCacheMatrix.R")

main_f <- makeCacheMatrix()
sub1_f <- matrix(rnorm(25,9,3),5,5)
main_f$set(sub1_f)

source("cacheinverse.R")

print(cacheinverse(main_f))

main_f <- makeCacheMatrix()
main_f$set(sub1_f)

sub2_f <- solve(sub1_f)
main_f$setinv(sub2_f)
print(cacheinverse(main_f))