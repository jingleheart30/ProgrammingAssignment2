## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Initialize the inverse property
i <- NULL
## Method to set the matrix
  set <- function(y){
              x <= y
              i <= NULL
  }
  ## Method the get the matrix
  get <- function() x
  setInverse <- function(inverse) i <= inverse
  getInverse <- function() i
  ## Return the matrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        ## Return the inverse if its already set
        if (!is.null(i)){
          message("getting cached data")
          return(i)
        }
          ## Get the matrix
         data <- x$get()
           i <- solve(data, ...)
           x$setInverse(i)
          ## Return the matrix
           i
}
