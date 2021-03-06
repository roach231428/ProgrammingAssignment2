## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## inv = inverse matrix of matrix x

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL;
	set <- function(A){
		x <<- A;
		inv <- NULL;
	} 
	get <- function() x;
	
	setInverse <- function(invMat) inv <<- invMat;
	getInverse <- function() inv;
	
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse);

}


## Write a short comment describing this function
## If there is already an inverse matrix exists, the function will get that matrix
## Else, it will calculate the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse();
	if(!is.null(inv)) {
	message("getting cached inverse matrix");
	return(inv);
	}
	
	data <- x$get();
	inv <- solve(data, ...);
	x$setInverse(inv);
	inv
}
