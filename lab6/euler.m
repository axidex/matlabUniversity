function res=euler(n)
const0Y = -1;
const1Y = 1;
h = 0.1 ;
X = zeros(1,n);
Y = zeros(1,n);
x = 0;
y = const0Y;


for i=1:n
        X(i) = x;
        Y(i) = y;
        y += h * f(x, y) # вычисление yi
        x += h
endfor
figure(1)
X
Y
plot(X,Y)
grid on
  res = 0
