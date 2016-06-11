## cachematrix

## Functions to cache the inverse of a matrix


## Writing a function which
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) 
  {
  i <- NULL
  set <- function(y) 
     {
      x <<- y
      i <<- NULL
     }
  get <- function() 
    x
  setinverse <- function(inv) i <<- inv
  getinverse <- function() i
  list
     (
      set = set,
      get = get,
      setinverse = setinverse,
      getinverse = getinverse
     )
 }


## Calculation of the inverse of the matrix created above


cacheSolve <- function(x, ...) 
  {
   inverse <- x$getinverse()
   if(!is.null(inverse)) 
    {
     message("getting cached data")
     return(inverse)
    }
   data_matrix <- x$get()
   inverse <- solve(data_matrix, ...)
   x$setinverse(inverse)
   inverse
  }
