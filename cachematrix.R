## These functions create a matrix with a cacheable inverse
## Use the makeCacheMatrix to return a cacheable matrix and then use
## cacheSolve to compute the inverse and cache it or return the cached inverse

## This function takes a matrix and returns a list of functions for caching its inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  get <- function() x
  
  set_solve <- function(solve) s <<- solve
  get_solve <- function() s
  
  list(set = set, get = get, set_solve = set_solve, get_solve = get_solve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
