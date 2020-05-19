## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This below function enables us to create a matrix which has within it instrutions to set a value of a matrix, get its value, set the inverse of that matrix and then get the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
	a <- NULL ## initialize
	set <- function(b) # set the matrix
	{
			x <<- b
			a <<- NULL
	}
	get <- function () x ## get the matrix
	setInverse <- function(i) a <<- solve(x) ##set the inverse of the matrix
	getInverse <- function() a ## get the matrix
	list(set = set, get = get, setInverse, getInverse = getInverse) ## List the methods
}


## Write a short comment describing this function

## the below function will generate the inverse of the matrix that is created with the above function. The function will check to see if the inverse has already been generated or not and then retrieve the inverse of the matrix in the cache using the setInverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <-x$getInverse()
        if(!is.null(a))
        {
        	return(a)
        }
        m <- solve(x$get()) ## calculate inverse 
        x$setInverse(a) ## set the inverse
        m
}
