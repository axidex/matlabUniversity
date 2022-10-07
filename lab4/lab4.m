function lab4(n)

m = 1/n;
R = zeros(n);
E = zeros(n);

for i =1:n
  for j =1:n
    R(i,j) = (2*rand-1);
  endfor
  E(i,i) = 1;
endfor

A = m*R - E;
b = ones(n,1);

yakobi(A,b);

errors = error(A,b);
R = r(A,b);

figure (1)
plot (1:length(errors), abs(errors), 1:length(R), abs(R))
grid on
figure (2)
plot (1:length(errors), log10(abs(errors)), 1:length(R), log10(abs(R))),
grid on

