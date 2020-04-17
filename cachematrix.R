## Put comments here that give an overall description of what your
## functions do

## This function inverts a matrix and cache the result

makeCacheMatrix <- function(x = matrix()) {
        invrt <- NULL #creates an empty variable to store the inverse
        set <- function(y) { #defines the new value of the matrix in parent env
                x <<- y
                invrt <<- NULL
        }
        get <- function() x #get the value of the matrix
        setInverse <- function() invrt <<- solve(x) #calculate the inverse and caches its value
        getInverse <- function() invrt #gets the value of invrt
        list(get = get, setInverse = setInverse, getInverse = getInverse) #defines scoping rules of the env
}


#This function access the cache using stored values

cacheSolve <- function(x, ...) {
        inv <- x$getInverse() #get the stored value
        if (!is.null(invrt)) {
                message("getting cached data")
                return(invrt) #if invrt is NOT null it will return a message and invrt
        }
        
}


