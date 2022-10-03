function norma = norm(a)

a
summa = zeros(length(a),1);
for i =1:length(a)

  summa(i) = sum(a(i))
endfor

norma = max(summa)
