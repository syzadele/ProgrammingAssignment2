## Put comments here that give an overall description of what your
## functions do
##This two function can let us get the inverse of a matrix entered

## Write a short comment describing this function
##This function can create a matrix function
##With this function, we can set or get the  matrix
##We can also get or set the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
    x<<-y
    inverse<<-NULL
  }
  get<-function() x
  setInverse<-function(inverse) i<<-inverse
  getInverse<-function() i
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function
##This function can return the inverse of a matrix that we entered

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  matrix<-x$get()
  i<-solve(matrix,...)
  x$setInverse(i)
  i
}
