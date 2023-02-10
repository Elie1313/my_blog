library(devtools)
usethis::use_r("divide_triangle")

# Mettre à jour les fichiers de documentation
document()


usethis::use_r("divide_list_triangle")

# Mettre à jour les fichiers de documentation
document()

remotes::install_github("Elie1313/heron")
#Même erreur que précedemment
renv::snapshot()
#A cause de l'erreur précédente il n'est pas mentionnée.

library(targets)
tar_script(script = "posts/post-with-code/_targets.R")

tar_config_set(store = "posts/post-with-code/_targets",
               script = "posts/post-with-code/_targets.R")


usethis::use_r("list_triangles")

# Mettre à jour les fichiers de documentation
document()

usethis::use_r("heron2")

# Mettre à jour les fichiers de documentation
document()
