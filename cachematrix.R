## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y)
  {
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  # set the inversed matrix
  setInverse <- function(inverse) mat <<- inverse
  # return the inversed matrix
  getInverse <- function() mat
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  if(!is.null(mat)) {
    message("to get the cached data")
    return(mat)
  }
  data <- x$get()
  mat <- solve(data, ...)
  x$setInverse(mat)
  mat
}
