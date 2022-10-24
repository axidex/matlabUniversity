function X = Gauss3(A,b)

size = length(A)
M = A;

Q = [];
bnew = [];

colchanges = [];
for i=1:size
  colchanges(i) = i;
endfor
colchangenew = [];
for i=1:size
  M
  b
  sizeM = length(M);

  [x1, ix1] = max(M);
  [x2, ix2] = max(x1);
  col = ix2;
  row = ix1(ix2);
# swap
  temp_A2 = M(:,1);
  M(:,1) = M(:,col);
  M(:,col) = temp_A2;

  temp_A2 = M(1,:);
  M(1,:) = M(row,:);
  M(row,:) = temp_A2;

  temp_A2 = b(1);
  b(1) = b(row);
  b(row) = temp_A2;

  temp_A2 = colchanges(1);
  colchanges(1) = colchanges(col);
  colchanges(col) = temp_A2;

  M
  b
# coefs
  coef = zeros(1,sizeM);
  for j=1:sizeM ##### test
    coef(j) = -M(j,1)/M(1,1);
  endfor
  coef;
  for j=2:sizeM
    M(j,:) = coef(j)*M(1,:) + M(j,:);
    b(j) = b(1)*coef(j) + b(j);
  endfor
  Q = [Q,M(1,:)];
  M(1,:) = [];
  M(:,1) = [];
  bnew(i) = b(1);
  b = b([2:size-i+1]);
  colchangenew(i) = colchanges(1);
  colchanges = colchanges([2:size-i+1]);

endfor
Q;
bnew
Matrix = zeros(size,size);
counter = 1;
for i=1:size
  for j=i:size
    Matrix(i,j) = Q(counter);
    counter += 1;
  endfor
endfor
Matrix
X = linsolve(Matrix, transpose(bnew))
colchangenew;
xLast = [];
for i=1:size
  XLast(colchangenew(i)) = X(i);
endfor;
X = transpose(XLast);

