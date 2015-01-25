## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## makeCacheMatrix takes a matrix as its arugment.
## Next it computes its inverse.
##
## To use this function, create a variable so:
## variableName <- makeCacheMatrix(a-matrix)
## where "a-matrix" is a variable holding a matrix
## or function which creates a matrix .

makeCacheMatrix <- function(mtrx = matrix()){
    mx <- mtrx
    iMx <- solve(mx)
		set <- function(g){
			mx <<- g
		}
		get <- function() mtrx
		
		setInverse <- function(mx){
			iMx <<- solve(mx)
		}
		
		getInverse <- function() iMx
		list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

## cacheSolve will take a matrix as its argument.
## Then it passes that argument to makeCacheMatrix.
## cacheSolve will compare this new matrix to its 
## existing matrix (the output of makeCacheMatrix$get()).
##
## If they are the same, then cacheSolve will return
## the output of makeCacheMatrix$getInverse().
## If they are different, cacheSolve will invoke
## makeCacheMatrix with cacheSolve's argument (the new matrix)
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
