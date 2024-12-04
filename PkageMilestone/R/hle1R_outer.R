hle1R_outer <-
  function (x) 
  {
    W <- outer(x, x, "+")/2
    return(median(W[upper.tri(W, diag = TRUE)]))
  }
