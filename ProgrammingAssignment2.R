#I am sorry for the code I am sending, but I do not quite understand the question of the activity or its function. 
#So I base my code given in the example, adding a matrix reversibility check

makeCacheMatrix <- function(x = matrix()) {
        
        set <- function(y) 
                x <<- y
                
                if (ncol(y)=nrow(y))   { 
                        get <- function() x
                        setinverse <- function(inverse) inv <<- inverse
                        getinverse <- function() inv
                        list(set = set, get = get,
                             setinverse = setinverse,
                             getinverse = getinverse)
                        
                } else { print("the matrix is not invertible")}
                
                
                
}

#Here I did not know what to place, the structure of the determinant and the transposed matrix, made this section impossible for
#me. I know there are no excuses for this

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}