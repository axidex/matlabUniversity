function R = r(A, b)
  N = 100;
  rows = length(A);
  cols = length(A(1,:));

  A_diag = zeros(rows, cols);
  A_no_diag = zeros(rows, cols);
  A_no_diag_otr = zeros(rows, cols);
  A_diag_obr = zeros(rows, cols);
  X_it = zeros(rows,1);
  b_new = zeros(rows,1);
  R = zeros(1,1);
  errors = zeros(1,1);
  eps = 0.0000000001;



  for i=1:rows
    X_it(i) = 0;
  endfor


  for i=1:rows
    for j=1:cols
      if i == j
        A_diag(i,j) = A(i,j);
      endif
      if i != j
        A_no_diag(i,j) = A(i,j);
        A_no_diag_otr(i,j) = -A(i,j);
      endif
    endfor
  endfor
  for i=1:rows
    A_diag_obr(i,i) = 1/A_diag(i,i);
  endfor

  #A
  #X
  #norm(A*X)
  #norm(A)*norm(X)

  A_diag_obr;
  A_no_diag_otr;

  A_no_diag_new = A_diag_obr*A_no_diag_otr;
  for i=1:rows
    b_new(i) = b(i)*A_diag_obr(i,i);
  endfor

  B_norm = norm(A_no_diag_new);
  B_coef = B_norm/(1-B_norm);
  # Iterations
  X = X_it;
  count = 1;
  for i=1:N
    if mod(i,2) == 1
      X1 = X_it;
    endif
    if mod(i,2) == 0
      X2 = X_it;
      errors(count) = abs(B_coef*norm((X1+X2)/2 - X));
      R(count) = abs(norm(A*((X1+X2)/2) - b));
      count += 1;
      X = (X1+X2)/2;
      if R(count-1) < eps
        break
      endif
    endif
    X_it = A_no_diag_new*X_it + b_new;
  endfor
  R

