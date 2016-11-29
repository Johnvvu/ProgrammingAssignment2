## The code here is used to invert a matrix. If the given matrix's inverse has been calculated before, the cached result is returned. 
## makeCacheMatrix takes a matrix as an input and 
## creates a list containing functions to 
## 1. Set and get the value of the matrix 
## 2. Set and get the value of the inverse of the matrix
 

makeCacheMatrix <- function(x = matrix()) { 
     i <- NULL 
     set <- function(y) { 
         x <<- y 
         i <<- NULL 
     } 
     get <- function() x 
     setinverse <- function(solve) i <<- solve 
     getinverse <- function() i 
     list(set = set, get = get, 
     setinverse = setinverse, 
     getinverse = getinverse) 
 } 
 

cacheSolve <- function(x, ...) { 

   i <- x$getinverse() 
    if(!is.null(i)) { 
          message("retrieving cached data") 
            return(i) 
     } 
        data <- x$get() 
        i <- solve(data, ...) 
        x$setinverse(i) 
       i 
   } 
