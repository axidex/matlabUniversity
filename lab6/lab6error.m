function lab6error()
n = 50;
h1 = 0.001;
h2 = 0.01;
h3 = 0.1;

error1 = lab6(h1);
error2 = lab6(h2);
error3 = lab6(h3);

n1 = n/h1;
n2 = n/h2;
n3 = n/h3;
X1 = zeros(1,n1);
X2 = zeros(1,n2);
X3 = zeros(1,n3);
x = 0;
for i=1:n1
  X1(i) = x;
  x= x + h1;
endfor
x = 0;
for i=1:n2
  X2(i) = x;
  x= x + h2;
endfor
x = 0;
for i=1:n3
  X3(i) = x;
  x= x + h3;
endfor

plot(X1,error1,X2,error2,X3,error3)
grid on
