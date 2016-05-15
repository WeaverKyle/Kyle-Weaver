## Very similar to the numeric average example, yet now we are looking at a matrix. 
## The form of the function is identical to the example, we only replace "m" with "inv." 
## makeCacheMatrix creates a special vector which sets and gets the vector, and sets and gets the inverse
## of said vector. In other words, it stores our values so the program will not have to recalculate with
## each itiration. 
makeCacheMatrix <- function(x = matrix()) { 
  inv=NULL
  set=function(y) {
    x<<-y
    inf<<-NULL
    
  }
get=function ()x
setinv= Function (inverse)inv<<-inverse
getinv=function ()inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## cacheSolve computes an inverse of the special matrix we durived above (makeCacheMatrix)

cacheSolve <- function(x, ...) {
        inv=x$getinv()
        if(!is.null(inv)){
        return(inv)
        }
    data=x$get()
    inv=solve(data,...)
    x$setinv(inv)
    return(inv)
        }
