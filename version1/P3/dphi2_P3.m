function  [y2] = dphi2_P3(x, x1, x2, x3,x4)
%calcule la fonction de forme dphi2 telle que: 
%     phi2(x1)=0 et phi2(x2)=1 et  phi2(x3)=0 et phi2(x4)=0
%               Ti
%       |------|-----|-----|
%       x1    x2     x3    x4
% dphi2(x)=a*x^3+b*x^2+c*x+d et abcd=[a;b;c;d]
abcd=[x1^3 x1^2 x1 1;x2^3 x2^2 x2 1;x3^3 x3^2 x3 1;x4^3 x4^2 x4 1]\[0;1;0;0];
   y2 = polyval(polyder(abcd),x);
end 