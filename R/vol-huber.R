
#' @title  Tree Volume using Huber's Formula
#' 
#' @details Tree Volume Estimation
#' 
#' @author A. Akinnagbe, P. O. Omondiagbe & S. O. Akindele
#' 
#' @description This function estimates tree volume using Huber's formula
#' 
#' @param dm diameter of a tree at the middle in centimeters (cm)
#' @param h height of a tree in meters (m)
#' 
#' @return Tree volume
#' 
#' @examples  
#' volHuber(dm = 35.6, h = 20)
#' 
#' @export
volHuber <- function(dm, h){
  
  if (!is.numeric(dm) || !is.double(dm)){
    stop('diameter at the middle must be a positive integer or a decimal')
  }
  
  if (!is.numeric(h) || !is.double(h)){
    stop('tree height must be a positive integer or a decimal')
  }
  
  # conversion from cm to m
  dm = dm/100
  
  return(h*(pi*(dm^2)/4) )
}

