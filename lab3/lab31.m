function lab31(L,n)
  N = 250;

  X = linear_grid(L, N);
Y = zeros(N,1);

for i=1:N
  Y(i) =f(X(i));
endfor;


XT = T_grid(L, n);
YT = zeros(n,1);

Xl = length(XT);
for  i= 1:Xl
  YT(i) = f(XT(i));
endfor
#XT
#YT
YTi = zeros(N, 1);
for i=1:N
  YTi(i) = interpolate(XT,YT,X(i));
endfor
#YTi
###########

XT2 = T_grid(L, n+10);
YT2 = zeros(n+10,1);


for  i= 1:length(XT2)
  YT2(i) = f(XT2(i));
endfor
#XT
#YT
YT2i = zeros(N, 1);
for i=1:N
  YT2i(i) = interpolate(XT2,YT2,X(i));
endfor
######

XT3 = T_grid(L, n+20);
YT3 = zeros(n+20,1);


for  i= 1:length(XT3)
  YT3(i) = f(XT3(i));
endfor
#XT
#YT
YT3i = zeros(N, 1);
for i=1:N
  YT3i(i) = interpolate(XT3,YT3,X(i));
endfor
######
XL = linear_grid(L, n);
YL = zeros(n,1);

for  i= 1:Xl
  YL(i) = f(XL(i));
endfor
#XL
#YL
YLi = zeros(N, 1);
for i=1:N
  YLi(i) = interpolate(XL,YL,X(i));
endfor
#YLi
#########
XL2 = linear_grid(L, n+10);
YL2 = zeros(n+10,1);

for  i= 1:length(XL2)
  YL2(i) = f(XL2(i));
endfor
#XL
#YL
YL2i = zeros(N, 1);
for i=1:N
  YL2i(i) = interpolate(XL2,YL2,X(i));
endfor
##########
XL3 = linear_grid(L, n+20);
YL3 = zeros(n+20,1);

for  i= 1:length(XL3)
  YL3(i) = f(XL3(i));
endfor
#XL
#YL
YL3i = zeros(N, 1);
for i=1:N
  YL3i(i) = interpolate(XL3,YL3,X(i));
endfor
##########

errors = zeros(n,1);
errors2 = zeros(n,1);
errors3 = zeros(n,1);
errors4 = zeros(n,1);
errors5 = zeros(n,1);
errors6 = zeros(n,1);
#########
for i = 1:N
  errors(i) = Y(i) - YTi(i);
  errors2(i) = Y(i) - YLi(i);
  errors3(i) = Y(i) - YT2i(i);
  errors4(i) = Y(i) - YL2i(i);
  errors5(i) = Y(i) - YT3i(i);
  errors6(i) = Y(i) - YL3i(i);

endfor
#errors
#errors2


#####

figure(1)

plot(X, Y, X, YTi, X, YT2i, X, YT3i)

grid on

figure(2)

plot(X, Y, X, YLi, X, YL2i, X, YL3i)

grid on


figure(3)
plot (1:N, log10(abs(errors)), 1:N, log10(abs(errors3)), 1:N, log10(abs(errors5)))
grid on

figure (4)
plot (1:N, log10(abs(errors2)), 1:N, log10(abs(errors4)), 1:N, log10(abs(errors6)))
grid on













