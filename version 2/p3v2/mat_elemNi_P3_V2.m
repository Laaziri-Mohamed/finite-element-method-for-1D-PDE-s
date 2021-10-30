function [ elemNi ] = mat_elemNi_P3_V2(gama,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x4=X(T(i,4));
elemNi=gama*((x4-x1)/2)*[16/105 33/280 -3/70 19/840;33/280 27/35 -27/280 -3/70;-3/70 -27/280 27/35 33/280;19/840 -3/70 33/280 16/105];
end 