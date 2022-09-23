function res=my_expr(x,n)
  res = 0;
for i=n:-1:1
  res = res + (-1)^(i-1)*(i)*x^(i-1);
end
end
