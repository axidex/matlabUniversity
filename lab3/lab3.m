function lab3(L,n)
 nMax = 30;
 N = 250;
X = linear_grid(L, N);
Y = zeros(N,1);
Ytest = zeros(nMax,1);
for i=1:N
  Y(i) =f(X(i));
endfor;

for i=1:nMax
  Ytest(i) = f(X(i));
endfor;

#####



#####

maxT = zeros(nMax,1);
sumT = zeros(nMax,1);
tmpMaxT = zeros(N,1);

for i = 1:nMax
  XTn = T_grid(L, i);
  YTn = zeros(i,1);

  for  j= 1:length(XTn)
    YTn(j) = f(XTn(j));
  endfor
  YTni = zeros(N, 1);
  for j=1:N
    YTni(j) = interpolate(XTn,YTn,X(j));
  endfor

  for j=1:N
    tmpMaxT(j) = abs(Y(j) - YTni(j));
  endfor
  max(tmpMaxT)
  maxT(i) = max(tmpMaxT);
  sumT(i) = sum(tmpMaxT)/N;
endfor
maxT;
sumT;



########

maxL = zeros(nMax,1);
sumL = zeros(nMax,1);
tmpMaxL = zeros(N,1);

for i = 1:nMax
  XLn = linear_grid(L, i);
  YLn = zeros(i,1);

  for  j= 1:length(XLn)
    YLn(j) = f(XLn(j));
  endfor
  YTni = zeros(N, 1);
  for j=1:N
    YLni(j) = interpolate(XLn,YLn,X(j));
  endfor

  for j=1:N
    tmpMaxL(j) = abs(Y(j) - YLni(j));
  endfor
  max(tmpMaxL)
  maxL(i) = max(tmpMaxL);
  sumL(i) = sum(tmpMaxL)/N;
endfor
#####
errors = zeros(nMax,1);
errors2 = zeros(nMax,1);
errors3 = zeros(nMax,1);
errors4 = zeros(nMax,1);

#########
for i = 1:nMax
  errors(i) =  maxL(i);
  errors2(i) = sumL(i);
  errors3(i) = maxT(i);
  errors4(i) = sumT(i);
endfor
##########

figure (5)
plot (1:nMax, log10(abs(errors3)), 1:nMax , log10(abs(errors4)), '.', 1:nMax, log10(abs(errors)), 1:nMax, log10(abs(errors2)), '.')

grid on




