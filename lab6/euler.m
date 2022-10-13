function res=euler(h)
const0Y = -1;
const1Y = 1;
n = 100/h;
X = zeros(1,n);
Y = zeros(1,n);
x = 0;
y = const0Y;


for i=1:n
        X(i) = x;
        Y(i) = y;
        y += h * f(x, y); # вычисление yi
        x += h;
endfor


X2 = zeros(1,n);
Y2 = zeros(1,n);
x = 0;
y = const1Y;

for i=1:n
        X2(i) = x;
        Y2(i) = y;
        y += h * Y(i); # вычисление yi
        x += h;
endfor


figure(1)
X;
Y;
plot(X2,Y2)
grid on
  res = Y2;
