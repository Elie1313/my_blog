#' Plot Triangles
#'
#' @param list_triangles A list of triangles to be plotted.
#' @return None
#' @export
#'
#' @examples
#' plot_triangles(list_triangles)
plot_triangles <- function(list_triangles) {
  # Plot each triangle in the list
  for (triangle in list_triangles) {
    # Get the x,y coordinates of each point
    A <- triangle[1]
    B <- triangle[2]
    C <- triangle[3]
    
    # Plot the triangle
    plot(c(A[1], B[1], C[1]), c(A[2], B[2], C[2]), type="l", lty=2, col="black")
  }
}