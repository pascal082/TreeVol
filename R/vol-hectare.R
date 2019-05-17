#' @title  Tree Volume per hectare
#' 
#' @details Presents Tree Volume per hectare
#' 
#' @author A. Akinnagbe, P. O. Omondiagbe & S. O. Akindele
#' 
#' @description Tree Volume per hectare
#' 
#' @param x volume per plot
#' @param y plot dimension
#' 
#' @return Volume per hectare
#' 
#' @examples  
#' volHa(x = 27.85, y = 25 * 25)
#' 
#' @export
volHa <- function(x, y){
  
  return(x * 10000/y)
  
}
