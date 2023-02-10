library(targets)
# This is an example _targets.R file. Every
# {targets} pipeline needs one.
# Use tar_script() to create _targets.R and tar_edit()
# to open it again for editing.
# Then, run tar_make() to run the pipeline
# and tar_read(summary) to view the results.

# Define custom functions and other global objects.
# This is where you write source(\"R/functions.R\")
# if you keep your functions in external scripts.

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

# Set target-specific options such as packages.


# End this file with a list of target objects.
list(
  tar_target(un, divide_triangle(c(0, 0), c(0, 1), c(0.5, (3/2)^0,5.))),
  tar_target(graph_un, plot_triangles(un)),
  tar_target(aire_un, heron2(un)),
  tar_target(deux, divide_list_triangle(un)),
  tar_target(graph_deux, plot_triangles(deux)),
  tar_target(aire_deux, heron2(deux)),
  tar_target(trois, divide_list_triangle(deux)),
  tar_target(graph_trois, plot_triangles(trois)),
  tar_target(aire_trois, heron2(trois)),
  tar_target(quatre, divide_list_triangle(trois)),
  tar_target(graph_quatre, plot_triangles(quatre)),
  tar_target(aire_quatre, heron2(quatre)),
)
