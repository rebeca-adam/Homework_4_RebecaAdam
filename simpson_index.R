simpson_index = function(x) {
  x = x[x > 0]
  N = sum(x)
  D = sum((x / N)^2)
  return(D)
}

