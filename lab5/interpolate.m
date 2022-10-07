function r=interpolate(X,Y,x0)
  n = length(X);
  p = zeros(n,n);

  for i = 1:n
    p(i,i) = Y(i);
  endfor

  for i=n:-1:1
    for j=i:n
      if i == j
        continue;
      endif
        p(i,j) = ((x0-X(j))*p(i,j-1) - (x0-X(i))*p(i+1,j))/(X(i)-X(j));
    endfor
  endfor

  r = p(1,n) ;
