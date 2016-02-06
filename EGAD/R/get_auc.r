#' Calculates the area under a curve
#'
#' The function calculates the area under the curve defined by x and y
#' 
#' @param x numeric array
#' @param y numeric array
#'
#' @return auc numeric value 
#' 
#' @keywords area under a curve
#' area
#' rolling mean 
#' 
#' @import zoo
#' @export
#'
get_auc <- function(x, y) {
    o <- order(x)
    auc <- sum(diff(x[o]) * rollmean(y[o], 2))
    return(auc)
} 