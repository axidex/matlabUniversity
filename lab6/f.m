function res = f(x,y)

  y1 = y(1);
  y2 = y(2);
  res(1) = y2;
  res(2) = exp(-x) - y1;
