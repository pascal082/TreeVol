
#' @title  Tree Volumn
#' @description Calculate volume of individual trees in a plot or stand
#' @param x dataframe or matrix of trees in a plot with diameter and height
#' @return dataframe containing volumes of individual trees
#' @example 
#' volTree(x)
#' @export
volTrees <- function(x){
  
  if(!is.data.frame(x)){
    stop("The input value is not a dataframe")
  }
  # conversion from cm to m
  # x[1] = x[1]/100
  # x[2] = x[2]/100
  # x[3] = x[3]/100
  
  return(mapply(vol, x[1], x[2], x[3], x[4]))
}