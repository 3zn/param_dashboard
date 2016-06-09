set.seed(57)
df <- data.frame(
  no = 1001:1004,
  name = c("kosaki", "chitoge", "tsugumi", "marika"),
  a1 = rnorm(4, 50, 10),
  a2 = rnorm(4, 50, 10),
  a3 = rnorm(4, 50, 10),
  x1 = sample(1:10, 4),
  x2 = sample(1:10, 4),
  x3 = sample(1:10, 4),
  x4 = sample(1:10, 4),
  y1 = runif(4),
  y2 = runif(4),
  y3 = runif(4)
)

write.csv(df, file = "data.csv", row.names = FALSE)