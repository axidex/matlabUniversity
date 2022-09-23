function X=T_grid(L, n)
  X = zeros(n,1);
  a = L(1);
  b = L(2);

  c = (a+b)/2;
  for i = 1:n
    X(i) = c - cos((2*i-1)/(2*n)*pi)* (b-a)/2;
  endfor


