df <- read.csv(file = "data.csv")

renderMydash <- function(no, name) {
  rmarkdown::render("dash.Rmd", output_file = paste0("out", no, ".html"),params = list(
    sub = no,
    name = name
  ))
}

mapply(renderMydash, df$no, df$name)