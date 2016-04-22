## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
        x <<- y
        m <<- NULL
    }
   
    get <- function() x
    setingInv <- function(solve) m <<- solve
    gettingInv <- function() m
    list(
        set=set, get=get,
        setingInv=setingInv,
        gettingInv=gettingInv
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    invmat<-x$setingInv()
    if(!is.null(invmat)){
      message("getting cached data")
      return(invmat)
    }
    matr<-x$get
    invmat<-solve(matr, ...)
    x$setmatrix(invmat)
    invmat
}
}
