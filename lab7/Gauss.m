function z=Gauss(A,b)

C=Simplex(A,b);

N=size(A,1);

v(N)=C(N,N+1);

for j=1:N-1

  s=0;

  for k=0:j-1
    s=s+C(N-j,N-k)*v(N-k);
  endfor

  v(N-j)=(C(N-j,N+1)-s)/C(N-j,N-j);
endfor

z=v.';

# A=[1,2,3,4,5;10,9,8,7,6;5,9,11,12,13;20,1,3,17,14;12,10,4,16,15]
# b=[10;20;30;40;50]
#x =

#0.0964

#1.4324

#-1.3530

#1.6593

#0.8921

# A*x - проверка
