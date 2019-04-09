
#' @details Calculate total tree volume per plot
#' @description   Here
#' @param x dataframe or matrix of trees in a plot with diameter and height
#' @return total volume per plot
#' @example 
#' volPlot(x)
#' @export
volPlot <- function(x){
  # conversion from cm to m
  # x[1] = x[1]/100
  # x[2] = x[2]/100
  # x[3] = x[3]/100
  
  return(sum(mapply(vol, x[1], x[2], x[3], x[4])))
}

#' #' Plot summary
#' #'
#' #' Summary statistics of dbh, tree height, basal area and volume in a plot
#' #' @param x dataframe or matrix of trees in a plot with diameter and height
#' #' @return Plot summary statistics
#' ## @export
#' summary_plot <- function(x){
#'   # conversion from cm to m
#'   # x[1] = x[1]/100
#'   # x[2] = x[2]/100
#'   # x[3] = x[3]/100
#'
#'   total_vol = sum(mapply(vol, x[1], x[2], x[3], x[4]))
#'   data.frame( min = min(x, na.rm = na.rm),
#'               total_vol = total_vol,
#'               min_dbh = min(x, na.rm = na.rm),
#'               max_dbh = max(x, na.rm = na.rm))
#' }
#'
