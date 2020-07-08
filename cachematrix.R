## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a matrix that cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            ## Set the matrix
            set <- function(y){
                        x <<- y
                        m <<- NULL
            }
            ## Get the matrix
            get <- function() x
            ## Return the matrix
            
            ## Set the inverse of the matrix
            setInverse <- function(solveMatrix) m <<- solveMatrix
            ## Get the inverse of the matrix
            getInverse <- function() m
            list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the matrix by makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            m <- x$getInverse()
            ## Return the inverse if its already set
            if(!is.null(m)){
                        message("getting cached data")
                        return(m)
            }
            ## Get the matrix from our object
            data <- x$get()
            ## Calculate the inverse using matrix
            m <- solve(data)
            ## Set the inverse to the object
            x$setInverse(m)
            m      
}
