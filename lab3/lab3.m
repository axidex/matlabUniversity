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

maxT = zeros(nMax,1);
sumT = zeros(nMax,1);

for i = 1:nMax
  XTn = T_grid(L, nMax);
  YTn = zeros(nMax,1);

  for  j= 1:length(XTn)
    YTn(i) = f(XTn(j));
  endfor
  YTni = zeros(N, 1);
  for j=1:N
    YTni(j) = interpolate(XTn,YTn,X(j));
  endfor
  maxT(i) = max(YTni);
  sumT(i) = sum(YTni)/N;
endfor
maxT;
sumT;



########

maxL = zeros(nMax,1);
sumL = zeros(nMax,1);
for i = 1:nMax
  XLn = linear_grid(L, nMax);
  YLn = zeros(nMax,1);

  for  j= 1:length(XLn)
    YLn(j) = f(XLn(j));
  endfor
  YLni = zeros(N, 1);
  for j=1:N
    YLni(j) = interpolate(XLn,YLn,X(j));
  endfor
  maxL(i) = max(YLni);
  sumL(i) = sum(YLni)/N;
endfor
#####
errors = zeros(nMax,1);
errors2 = zeros(nMax,1);
errors3 = zeros(nMax,1);
errors4 = zeros(nMax,1);

#########
for i = 1:nMax
  errors(i) = Ytest(i) - maxL(i);
  errors2(i) = Ytest(i) - sumL(i);
  errors3(i) = Ytest(i) - maxT(i);
  errors4(i) = Ytest(i) - sumT(i);
endfor
##########

figure (5)
plot (1:nMax, log10(abs(errors3)), 1:nMax, log10(abs(errors4)))
grid on

figure (6)
plot (1:nMax, log10(abs(errors)), 1:nMax, log10(abs(errors2)))
grid on


