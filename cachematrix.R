## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
  {
  invse <- NULL
  set <- function(y)
  {
    x<<-y
    invse<-NULL
  }
  get <- function() x
  setinv <- function(inverse) invse <<- inverse
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invse <- x$getinv()
  if (!is.null(invse)) {
    message("getting cached data")
    return(invse)
  }
  mat <- x$get()
  invse <- solve(mat, ...)
  x$setinv(invse)
  invse
  
}
