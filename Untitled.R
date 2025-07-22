
rm(list = ls())                 # Clear variables
while (!is.null(dev.list())) dev.off()  # Close all plots


library("rstudioapi") # Load rstudioapi package
setwd(dirname(getActiveDocumentContext()$path)) # Set working directory to source file location
getwd() # Check updated working directory


for (q in 1:100) {
  filename <- paste0("main_script", q, ".R")
  lines <- readLines(filename)
  lines <- gsub("M16", "M8", lines)
  writeLines(lines, filename)
}
