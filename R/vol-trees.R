
#' @title  Tree Volume
#' 
#' @author A. Akinnagbe, P. O. Omondiagbe & S. O. Akindele
#' 
#' @details Tree Volume Estimation for each of the trees in a plot or a stand
#' 
#' @description Calculate volume of individual trees in a plot or stand
#' 
#' @param x dataframe of tree measurements in a plot or stand, in terms of diameter and height
#' @param y function to calculate tree volume. Enter volHuber for Huber, volSmalian for Smalian and volNewton for Newton.
#' @param dbCol column number of the diameter at the base on the dataframe
#' @param dmCol column number of the diameter at the middle (otherwise known as dbh in some cases) on the dataframe
#' @param dtCol column number of the diameter at the top on the dataframe
#' @param hCol column number of the height on the dataframe
#' 
#' @return dataframe containing volumes of individual trees
#' 
#' @examples
#' x <- data.frame(db = c(38.40, 28.10, 63.10, 64.5), dm = c(25.4, 18.6, 41.6, 42.6), dt = c(12.7, 9.3, 20.8, 21.3), h = c(38.4, 32.3, 68.3, 69.5))
#' volPlot(x, volHuber, dmCol = 2, hCol = 4)
#' volPlot(x, volSmalian, dbCol = 1, dtCol = 3, hCol = 4)
#' volPlot(x, volNewton, dbCol = 1, dmCol = 2, dtCol = 3, hCol = 4)
#' 
#' @export
volTrees <- function(x, y, dbCol = NULL, dmCol = NULL, 
                    dtCol = NULL, hCol = NULL){
  
  if(!is.data.frame(x)){
    stop("The input value is not a dataframe")
  }
  
  if(!is.function(y)){
    stop("The input value must be a function (i.e. volHuber, 
         volSmalian or volNewton) to calculate tree volume")
  }
  
  if(identical(y, volHuber)){
    return(mapply(y, x[dmCol], x[hCol]))
  } 
  if(identical(y, volSmalian)){
    return(mapply(y, x[dbCol], x[dtCol], x[hCol]))
  } 
  if(identical(y, volNewton)){
    return(mapply(y, x[dbCol], x[dmCol], x[dtCol], x[hCol]))
  }
  
  }