## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL ## sets to NULL as a placeholder for a future value
        set<-function(y){
                x<<-y
                m<<-NULL ## defines a function to set the vector x to a new vector y, and resets m to NULL
        }
        get<-function() x ## returns the vector x
        setmatrix<-function(solve) m<<- solve ## sets the inverse of the matrix
        getmatrix<-function() m ## returns the inverse
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix) ## returns the 'special vector' containing all of the functions just defined
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
