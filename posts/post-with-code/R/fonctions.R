library(devtools)

# Q3
usethis::use_r("divide_triangle")

# Mettre à jour les fichiers de documentation
document()

# Q4
usethis::use_r("divide_list_triangle")

# Mettre à jour les fichiers de documentation
document()

# Q5
remotes::install_github("Elie1313/heron")
# Même erreur que précedemment
renv::snapshot()
# A cause de l'erreur précédente le package heron n'est pas mentionné.

# Q6
library(targets)
tar_script(script = "posts/post-with-code/_targets.R")

# Q7
tar_config_set(
  store = "posts/post-with-code/_targets",
  script = "posts/post-with-code/_targets.R"
)

# Q9
usethis::use_r("list_triangles")

# Mettre à jour les fichiers de documentation
document()

# Q11
# Comme je ne peux pas installez le package heron et donc mobiliser la fonction du même nom
# je vais créer une fonction qui reprendra certains traits de heron.

usethis::use_r("heron2")

# Mettre à jour les fichiers de documentation
document()
