function y=euler( x, Y, h )
  r = f(x,Y);
  y(1) = Y(1) + h*r(1);
  y(2) = Y(2) + h*r(2);

