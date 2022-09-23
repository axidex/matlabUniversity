function aprxn = newton(x0, n);
  for i = 1:n
    aprxn(i) = x0;
    x0 = x0 - f(x0)/df(x0);
  endfor

