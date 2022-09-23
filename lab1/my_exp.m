function res=my_exp(x,n)
  res = 0;
for i=1:n
  res = res + (-1)^(i-1)*(i)*x^(i-1);
end
end
