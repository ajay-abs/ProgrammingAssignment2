## Caching the inverse of a matrix:
## Matrix inversion is usually a costly computation
## There may be some benefit to caching the inverse of a matrix rather than compute it repeatedly
## These are the functions to do the caching function

## "makeCacheMatrix" function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## "cacheSolve" function computes the inverse of the special "matrix" returned by makeCacheMatrix above
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- x$getInverse()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  mat <- x$get()
  a <- solve(mat,...)
  x$setInverse(a)
  a
}
