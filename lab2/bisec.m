function aprx = bisec(l, imax)
  a = l(1);
  b = l(2);
  c = (a+b)/2;
  cp = c;


  for i = 1:imax
    aprx(i) = c;
     if f(a)*f(c) < 0
      b = c;
   endif
   if f(b)*f(c) < 0
      a = c;
   endif
   abs(a-b);
   cp = c;
   c = (a+b)/2;

  if abs(cp-c)/max(abs(cp),abs(c)) <= eps
    break;
  endif
  endfor
c
