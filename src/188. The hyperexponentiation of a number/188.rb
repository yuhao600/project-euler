def hyper_exp(a, b, m)
    if b == 1
      a % m
    else
      a.pow(hyper_exp(a, b - 1, m), m)
    end
  end
  
puts hyper_exp(1777, 1855, 100_000_000)
