testHomework <- function() {
  
  ##  Set the working directory
  setwd("~/projects/coursera_r_class/github_repos/ProgrammingAssignment2-master/")
  
  ##  Make sure the homework file is loaded in the memory
  source("cacheMatrix.R")
  
  ## Create a simple test case of a 2 (column) by 2 (row) matrix
  testMatrix <- makeCacheMatrix(matrix(1:4, 2, 2))
  
  ## Check the output of the get function
  message("makeCacheMatrix get() test")
  testMatrix$get()
  
  ## Check the output of the internal cachesolve() function
  message("CacheSolve() function test")
  cacheSolve(testMatrix)
  
  
}