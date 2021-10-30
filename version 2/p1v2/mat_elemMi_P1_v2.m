function [ elemMi ] = mat_elemMi_P1_v2(beta)
%calcule la matrice élémentaire dans l'élément TR
%               TR
%       |---------------|
%      -1               1
%
elemMi=-beta*[-0.5  -0.5;0.5   0.5];

end