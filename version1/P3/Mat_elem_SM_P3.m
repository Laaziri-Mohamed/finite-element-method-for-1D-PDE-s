function [ elemFi ] = Mat_elem_SM_P3(f,X,T,i)
%calcule le second membre élémentaire dans l'élément Ti
%        Ti
% |------|------|------|
% x1     x2    x3     x4

x1=X(T(i,1));
x2=X(T(i,2));
x3=X(T(i,3));
x4=X(T(i,4));
elemFi=[int_phi1_P3(f,x1,x2,x3,x4);int_phi2_P3(f,x1,x2,x3,x4);int_phi3_P3(f,x1,x2,x3,x4);int_phi4_P3(f,x1,x2,x3,x4)];
%
end