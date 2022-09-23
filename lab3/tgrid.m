function X=T_grid(L, n)
  X = zeros(n,1);
  a = L(1);
  b = L(2);

  c = (a+b)/2;
  for i = 0:n
        X(i+1) = c - cos((2*i+1)/(2*n+2)*pi)* (b-a)/2;
  endfor


