function lab2(x0, n)
for i = 1:n
  aprx = bisec([0.5, 2],n);
  aprxn = simpleit(x0, n);
endfor
l = length(aprx);
GT = aprx(l);
errors = zeros(n,1);
errors2 = zeros(n,1);
Rn1 = zeros(n,1);
Rn2 = zeros(n,1);
for i = 1:n
    errors(i) = aprx(i) - GT;
    errors2(i) = aprxn(i) - GT;
    Rn1(i) = f(aprx(i));
    Rn2(i) = f(aprxn(i));
endfor
figure(1)
plot (1:n, log10(abs(errors)), 1:n, log10(abs(errors2)), 1:n, log10(abs(Rn1)), 'b--', 1:n, log10(abs(Rn2)), 'r--')
grid on
figure(2)
plot (1:n, aprxn, 1:n, aprx)
grid on




