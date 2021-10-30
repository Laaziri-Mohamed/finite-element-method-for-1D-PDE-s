function [ elemKi ] = mat_elemKi_P3_V2(alpha,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |-----|-----|-----|
%       x1                x4
%
x1=X(T(i,1));
x4=X(T(i,4));
 elemKi=(-alpha)*(2/(x4-x1))*[37/20 -189/80 27/40 -13/80;-189/80 27/5 -297/80 27/40;27/40 -297/80 27/5 -189/80;-13/80 27/40 -189/80 37/20];
end 