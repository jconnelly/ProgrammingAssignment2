## Put comments here that give an overall description of what your
## functions do
##
## This function is a modification of the forked repository for the
## 2nd programming assignment for week 3 of the R Programming course
## Ultimately, this function(set) will create an inverse matrix object

## Write a short comment describing this function
## This function will setup the matrix so that it can be
## processed through and cached into the inverse of the vector

makeCacheMatrix <- function(x = matrix()) {

	## Create the variable to store the matrix
	## Initialize it to null to start 
	m <- NULL
	
	## Create a function to handle the assignments
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	## Create a get function to return the matrix argument
	get <- function() {
    return(x)
	}
	
	##  Create a setinverse function to set the internal variable to the inverse value
	setinverse <- function(inverse) {
		m <<- inverse
	}
	
	##  Create a getinverse function to return the internal variable
	getinverse <- function(inverse) {
		return(m)
	}

	## Create the list with the getters and setters functions listed above
	## Since this is the last item in the parent function, it will be automatically returned
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
	
}


## Write a short comment describing this function
## This function will compute the new matrix value from the makeCacheMatrtix function created right above this
## This function will output the values passed to it to the console/output window

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
	
	matrixVariable <- x$getinverse()
	
	## Check to see if the matrix variable is not empty(null)
	## Output message if it is not empty, return the variable if not empty
	if(!is.null(matrixVariable)) {
	  message("getting cached data")
	  return(matrixVariable)
	}
	
	## Assign the result of the get function (defined above) to a new variable
	data <- x$get()
	
	## Assign the results of the internal solve function to the local matrixVariable 
	matrixVariable <- solve(data, ...)
	
	## Append the inverse value into the matrixVariable created through the setinverse 
	## function in the makeCacheMatrix function above
	x$setinverse(matrixVariable)
	
	## Send the internal variable back out of the function
	return(matrixVariable)
	
}
