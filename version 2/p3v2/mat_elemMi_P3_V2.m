function [ elemMi ] = mat_elemMi_P3(beta)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |----|-----|------|
%       x1              x4
%
 elemMi=(-beta)*[-1/2 -57/80 3/10 -7/80;57/80 0 -81/80 3/10;-3/10 81/80 0 -57/80;7/80 -3/10 57/80 1/2];
end 