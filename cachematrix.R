## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  
  ## initialize the stored inverse value to NULL
  inv <- NULL
  
  ## set value of the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL # matrix has changed, reassign to NULL
  }
  
  ## get value of matrix
  get <- function() x
  
  ## set inverse of matrix
  setinverse <- function(inverse) inv <<- inverse
  
  ## get inverse of matrix
  getinverse <- function() inv
  
  ## return a list containing all functions defined above
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
