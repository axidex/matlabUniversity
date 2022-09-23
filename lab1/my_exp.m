function res=my_exp(x,n)
  res = 0;
for i=1:n
  res=res+x^(i-1)/factorial(i-1);
end
end
