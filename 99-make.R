files <- list.files(".", pattern = "*.Rmd")
dir.create("exercises", showWarnings = FALSE)
remove_exercises <- function(x) {
  f <- readLines(x)
  f_ex <- ifelse(grepl("# exercise", f), "# exercise", f)
  writeLines(as.character(f_ex), con = file.path("exercises", x))
}
exercises <- lapply(files, remove_exercises)