function lab2(x0, n)
for i = 1:n
  aprx = bisec([-10, 10],n);
  aprxn = newton(x0, n);
  errors(i) = aprx(i) - aprxn(i);
  errors2(i) = aprxn(i) - aprx(i);
endfor
figure(1)
plot (1:n, errors)
grid on

figure (2)
plot (1:n, log10(abs(errors)))
grid on



