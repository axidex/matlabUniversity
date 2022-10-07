function sum=pryam(step)
  n = 1/step;
  XL = linear_grid([0, 1], n);
  Y = zeros(n,1);
  sum = 0;

  for i = 1:n
    Y(i) = f(XL(i));
    sum += Y(i)*step;
  endfor
