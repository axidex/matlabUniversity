function X=linear_grid(L, n)
  X = zeros(n,1);
  a = L(1);
  b = L(2);
  X(1) = a;
  X(n) = b;
  l = abs(a-b);
  dx = l/(n-1);
  for i = 2:n-1
    a = a + dx;
    X(i) = a;
  endfor
