function [ elemLi ] = mat_elemLi_P1_v2(gamma)
%calcule la matrice élémentaire dans l'élément TR
%               TR
%       |---------------|
%      -1               1
%

elemLi=(1/3)*gamma*[2  1;1   2];

end