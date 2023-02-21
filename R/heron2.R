#' Calculate the area of all triangles in a list
#'
#' Description
#'
#' @param list_triangles A list of triangles
#' @return The sum of the areas of the triangles
#' @export
#' heron2(list_triangles)
heron2 <- function(list_triangles) {
  area_sum <- 0
  # Iterate over the list of triangles
  for (triangle in list_triangles) {
    # Get the lengths of the sides of the triangle
    a <- triangle[1]
    b <- triangle[2]
    c <- triangle[3]

    # Calculate the area of the triangle
    p <- ((a + b + c) / 2)
    area <- sqrt(p * (p - a) * (p - b) * (p - c))

    # Add the area to the running total
    area_sum <- area_sum + area
  }

  # Return the sum of the areas
  return(area_sum)
}
