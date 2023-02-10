#' Divide a triangle
#'
#' This function divides a triangle into three new triangles.
#'
#' @param A The coordinates of the first point of the triangle
#' @param B The coordinates of the second point of the triangle
#' @param C The coordinates of the third point of the triangle
#'
#' @return A list of three triangles
#' @export
#' @examples
#' # Create a triangle
#' A <- c(1, 2)
#' B <- c(4, 7)
#' C <- c(7, 2)
divide_triangle <- function(A, B, C)
{
  # Calculate the midpoints of each side
  midAB <- (A + B)/2
  midBC <- (B + C)/2
  midAC <- (A + C)/2
  
  # Create the four new triangles
  triangle1 <- c(A, midAB, midAC)
  triangle2 <- c(midAB, B, midBC)
  triangle3 <- c(midAC, midBC, C)
  triangle4 <- c(midAB, midBC, midAC)
  
  # Return only the three outer triangles
  return(list(triangle1, triangle2, triangle3))
}
