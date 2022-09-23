function res=my_expr(x,n)
  res = 0;
for i=n:-1:1
  res=res+x^(i-1)/factorial(i-1);
end
end
