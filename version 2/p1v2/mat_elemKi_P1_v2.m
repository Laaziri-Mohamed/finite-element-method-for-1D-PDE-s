function [ elemKi ] = mat_elemKi_P1_v2(alpha)
%calcule la matrice �l�mentaire dans l'�l�ment TR
%               TR
%       |---------------|
%       -1              1
%


elemKi=-alpha*[0.5  -0.5;-0.5   0.5];

end