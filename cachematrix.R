## The following two functions produce the inverse of a matrix and cache it for faster retrieval
## in the future.

## The followinf function caches the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inversee <- NULL
  set <- function(y) {
    x <<- y
    inversee <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inversee <<- inverse
  getinverse <- function() inversee
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


##This function returns a matrix that is the inverse of 'x'
## Before actually calculating the inverse, the function checks if it already holds the inverse
## in its cache.

cacheSolve <- function(x, ...) {
        
  
  inversee <- x$getinverse()
  if(!is.null(inversee)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inversee <- solve(data)
  x$setinverse(inversee)
  inversee
}
