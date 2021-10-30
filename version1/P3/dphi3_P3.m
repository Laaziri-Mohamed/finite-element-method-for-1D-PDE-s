function  [y2] = dphi3_P3(x, x1, x2, x3,x4)
%calcule la fonction de forme dphi3 telle que: 
%     phi3(x1)=0 et phi3(x2)=0 et  phi3(x3)=1 et phi3(x4)=0
%               Ti
%       |------|-----|-----|
%       x1    x2     x3    x4
% dphi3(x)=a*x^3+b*x^2+c*x+d et abcd=[a;b;c;d]
abcd=[x1^3 x1^2 x1 1;x2^3 x2^2 x2 1;x3^3 x3^2 x3 1;x4^3 x4^2 x4 1]\[0;0;1;0];
   y2 = polyval(polyder(abcd),x);
end 