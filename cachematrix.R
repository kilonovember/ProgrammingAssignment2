## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## makeCacheMatrix takes a matrix as its arugment,
## and stores it in the global environment.
## Next it computes its inverse and stores that
## in the global environment.
##
## To use this function, create a variable so:
##   variableName <- makeCacheMatrix(a-matrix)
## where "a-matrix" is a variable holding the existing matrix
## to be tested.

makeCacheMatrix <- function(mtrx = matrix()){
    	
		set <- function(g){
			mtrx <<- g
		}
		get <- function() mtrx
		
		setInverse <- function(mtrx){
			iMtrx <<- solve(mtrx)
		}
		
		getInverse <- function() iMtrx
		list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

## cacheSolve will take a matrix as its argument,
## then pass that argument to makeCacheMatrix
## cacheSolve then compares its argument to the output
## of makeCacheMatrix$get().
## If they are the same, then cacheSolve will return
## the output of makeCacheMatrix$getInverse().
## If they are different, cacheSolve will invoke
## makeCacheMatrix with cacheSolve's argument
## and return the output of makeCacheMatrix$getInverse().

cacheSolve <- function(x, cacheFunction='test'){
## Return a matrix that is the inverse of 'x'
	if(identical(cacheFunction$get(),x)){
	}else{
			cacheFunction$set(x)
			cacheFunction$setInverse(x)
	}
	cacheFunction$getInverse()
}
