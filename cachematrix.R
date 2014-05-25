## These two functions aim to catch the inverse of a matrix


## 1 - This function creates a matrix object called makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
m  <- NULL 
set  <- function (y){
x << Y
m << NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}


## The cacheSolve function computes the inverse of makeCacheMatrix. If the inverse has already been calculated and the matrix has not changed then this fucntion should catch the retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get() 
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}