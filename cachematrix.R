## The following function(s) will be able to cache potentially
## time-consuming computations. Particulary one that will cache
## the inverse of a Matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  SolvX <- NULL
  set <- function(y) { ## set value of matrix
    x <<- y
    SolvX <<- NULL
  }
  get <- function() x ## get matrix by returning x
  set_inverse <- function(inver_mtx) SolvX <<- inver_mtx
  get_inverse <- function() SolvX
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function
## following function calculates the inverse of the previously
## created matrix. Before this it checks to see if the inverse
## has already been calculated
## if yes, then get inverse from cache
## if no then calculate inverse via set_inverse function and set
## inver_mtx 

cacheSolve <- function(x, ...) {
  
        ## Return a matrix that is the inverse of 'x'
  
  SolvX <- x$get_inverse()
  
  if(!is.null(SolvX)) {
    
    message("getting cached matrix")
    
    return(Solvx)
    
  }
  
  mtrx <- x$get()
  
  SolvX <- solve(mtrx, ...)
  
  x$set_inverse(SolvX)
  
  return(SolvX)
  
}
