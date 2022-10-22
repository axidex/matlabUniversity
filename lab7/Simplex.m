function z=Simplex(A,b)

N=size(A,1);% определение числа уравнений системы

C=cat(2,A,b);% создание расширенной матрицы системы

for i=1:N-1

  if C(i,i)==0

    C=Exchange(C,i);

  endif

  for j=0:N

    C(i,N+1-j)=C(i,N+1-j)/C(i,i);

   endfor

  for m=i+1:N

     alpha=C(m,i);

    for j=i:N+1

      C(m,j)=C(m,j)-alpha*C(i,j);

    endfor

  endfor

endfor

C(N,N+1)=C(N,N+1)/C(N,N);

C(N,N)=1;

z=C;
