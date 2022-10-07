function lab5()
 h1 = 0.01;
 h2 = 0.02;
 h3 = 0.025;
 h4 = 0.05;
 I = zeros(1,5);
 h = zeros(1,5);
 I1 = pryam(h1);
 I2 = pryam(h2);
 I3 = pryam(h3);
 I4 = pryam(h4);

 h(1) = h4;
 h(2) = h3;
 h(3) = h2;
 h(4) = h1;

 I(1) = I4;
 I(2) = I3;
 I(3) = I2;
 I(4) = I1;
 I(5) = interpolate([h1,h2,h3,h4],[I1,I2,I3,I4],0);

 errors = zeros(5,1);

 [area,ierror,nfneval]=quad("f",0,1);

 for i=1:5
  errors(i) = abs(area - I(i));
 endfor

 errors
 figure(1)
 plot(h, errors)
 grid on
 figure(2)
 plot(h,log10(errors))
 grid on
