#I am sorry for the code I am sending, but I do not quite understand the question of the activity or its function. 
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## use the example from the exercise as a base, i just replaced the mean function with solve and rename 
## the setmean and getmean arguments to setinv and getinv (inv which means inverse)

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL 
        set <- function(y){
                x <<- y 
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m 
        list(set = set, get = get, 
             setinv = setinv,
             getinv = getinv)
}

## I did the same in the function below

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
