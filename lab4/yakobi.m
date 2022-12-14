function X = yakobi(A, b)
  N = 100;
  rows = length(A);
  cols = length(A(1,:));

  A_diag = zeros(rows, cols);
  A_no_diag = zeros(rows, cols);
  A_no_diag_otr = zeros(rows, cols);
  A_diag_obr = zeros(rows, cols);
  X_it = zeros(rows,1);
  b_new = zeros(rows,1);

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
  # Iterations
  for i=1:N
    if mod(i,2) == 1
      X1 = X_it;
    endif
    if mod(i,2) == 0
      X2 = X_it;
    endif
    X_it = A_no_diag_new*X_it + b_new;
    if i > 2
      X = (X1+X2)/2;
    endif
  endfor

