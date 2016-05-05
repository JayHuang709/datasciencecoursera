makeCacheMatirx<-function(x=matrix()){
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse)inv<<-inverse
  getinverse<-function()inv
  list(set=set,get=get,
       getinverse=getinverse,
       setinverse=setinverse)
}

cacheSovle<-function(x){
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-sovle(data)
  x$setinverse(inv)
  inv
}