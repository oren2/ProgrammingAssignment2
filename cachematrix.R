## functions to cache a solved matrix.

## special function to cache matrices

makeCacheMatrix <- function(x = matrix()) {

  solved.Matrix <- NULL
  
  set.Matrix <- function(y){ #Sets new matrix.
    x<<- y
    solved.Matrix <<- NULL
  }
  
  get.Matrix <- function() x  #Return x which is the matrix.
  
  set.solved.Matrix <- function(solved) solved.Matrix <<- solved
  
  get.solved.Matrix <- function() solved.Matrix
  
  list(
    set.Matrix = set.Matrix,
    get.Matrix = get.Matrix,
    set.solved.Matrix = set.solved.Matrix,
    get.solved.Matrix = get.solved.Matrix
  )
  
}


## solves a Matrix and caches it

cacheSolve <- function(x, ...) {
 solved.Matrix <- x$get.solved.Matrix()
 if(!is.null(solved.Matrix)) {
   message("getting cached solved matrix")
   return(solved.Matrix)
 }
 
 data <- x$get.Matrix()
 solved.Matrix <- solve(data,...)
 x$set.solved.Matrix (solved.Matrix)
 solved.Matrix
}
