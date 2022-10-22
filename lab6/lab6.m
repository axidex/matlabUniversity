function res=lab6(h)
const0Y = -1;
const1Y = 1;

n = 100/h;
X = zeros(1,n);
Y1 = zeros(1,n);
Y2 = zeros(1,n);

ytemp = zeros(1,2);
ytemp(1) = const0Y;
ytemp(2) = const1Y;

x = 0;

for i=1:n
  X(i) = x;
  Y1(i) = ytemp(1);
  Y2(i) = ytemp(2);
  ytemp = euler(x, ytemp, h);
  x+=h;
endfor


Yorig = zeros(1,n);
for i=1:n
  Yorig(i) = forig(X(i));
endfor
error = zeros(1, n);

for i=1:n
  error(i) = abs(Yorig(i)-Y1(i));
endfor

res = log10(error);

plot(X,Y1,X,Yorig)
