function y = int_phi3_P3(f,x1,x2,x3,x4)
%calcule l'intégrale sur l'élément Ti de f*phi3 (second membre)
%moyennant la quadrature de Simpson
%          Ti
% |-----|-------|------|
% x1   x2       x3     x4
%
%
y=((x4-x1)/8)*(f(x1)*phi3_P3(x1,x1,x2,x3,x4)+3*(f(x2)*phi3_P3(x2,x1,x2,x3,x4)+f(x3)*phi3_P3(x3,x1,x2,x3,x4))+f(x4)*phi3_P3(x4,x1,x2,x3,x4));
end