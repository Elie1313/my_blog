#' Divide multiple triangles
#'
#' This function divides multiple triangles into new triangles.
#'
#' @param triangle_list A list of triangles
#'
#' @return A list of divided triangles
#' @export 
#' @examples
#' # Create some triangles
#' triangle1 <- c(1, 2, 7)
#' triangle2 <- c(4, 7, 2)
#' triangle3 <- c(7, 2, 8)
divide_list_triangle <- function(triangle_list)
{
  new_list <- c()
  
  # Iterate through each triangle
  for (triangle in triangle_list) {
    # Get the triangle vertices
    A <- triangle[1]
    B <- triangle[2]
    C <- triangle[3]
    
    # Divide the triangle
    divided_triangles <- divide_triangle(A, B, C)
    
    # Add the divided triangles to the new list
    new_list <- c(new_list, divided_triangles)
  }
  
  # Return the new list
  return(new_list)
}