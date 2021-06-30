library("MortalitySmooth", quietly = TRUE, warn.conflicts = FALSE)

psline_fit <- function(x, y, offset, method, lambda) {
  return(Mort1Dsmooth(x = x, y = y, offset = offset, method = method, lambda = lambda))
}

psline_predict <- function(fitted, newdata = NULL, prediction_type = c("link", "response")) {
  return(try(predict(fitted, newdata, prediction_type), silent = T))
}