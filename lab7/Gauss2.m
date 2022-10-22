# A=[1,2,3,4,5;10,9,8,7,6;5,9,11,12,13;20,1,3,17,14;12,10,4,16,15]
# b=[10;20;30;40;50]
#x =

#0.0964

#1.4324

#-1.3530

#1.6593

#0.8921

# A*x - проверка
function z=Gauss2(A,b)
  z = A;
  z
  A2 = zeros(length(z),length(z(1,:)));
  flag = length(z);
  while length(z) != 1
  [x1, ix1] = max(z);
  [x2, ix2] = max(x1);
  col = ix2;
  row = ix1(ix2);
  for
  A2(flag,:) =z(row,:);
  M = zeros(1, length(z));
  A_new = zeros(length(z),length(z(1,:)));
    for i=1:length(z)
      if i == row
        continue
      endif
      M(i) = -z(i,col)/z(row,col);
    endfor

   for i=1:length(z)
        A_new(i,:) = M(i)*z(row ,:);
   endfor
  A_new(row,:) = [];
  A_new(:,col) = [];
  z = A_new;
  z
  flag-=1;
endwhile
A2
