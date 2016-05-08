##This function contain four part
makeCacheMatrix<-function(x=matrix()){
  inv<-NULL
  
  ##set matrix
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  ##get matrix
  get<-function() x
  ##set matrix inverse
  setinverse<-function(inverse)inv<<-inverse
  ##get matrix inverse
  getinverse<-function()inv
  list(set=set,get=get,
       getinverse=getinverse,
       setinverse=setinverse)
}

#This function cach the inverse of matrix,both get or set
cacheSovle<-function(x){
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  ##calculate the inverse of matrix
  inv<-sovle(data)
  x$setinverse(inv)
  inv
}
