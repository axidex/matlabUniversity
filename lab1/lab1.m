function lab1(x,n)
format long e;
res = 0;
errors = zeros(n,1);
etheor = exp(x);
errorsr = zeros(n,1);

for i = 1:n
  errors (i) = etheor - my_exp(x,i);
endfor

for i = 1:n
  errorsr(i) = etheor - my_expr(x,i);
endfor


figure (1)
plot (1:n, errors, 1:n, errorsr)
grid on

figure (2)
plot (1:n, log10(abs(errors)), 1:n, log10(abs(errorsr)))
grid on

errors
errorsr
