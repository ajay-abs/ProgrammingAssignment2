# Caching the inverse of a matrix:

Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly
The functions "makeCacheMatrix" and "cacheSolve" to do the caching function

## makeCacheMatrix

"makeCacheMatrix" function creates a special "matrix" object that can cache its inverse

## cacheSolve

"cacheSolve" function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache
