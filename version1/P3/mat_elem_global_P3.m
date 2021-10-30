function [ elemKi ] = mat_elem_global_P3(alpha,beta,gama,X,T,i)
% la matrice élémentaire dans chaque Ti
%        Ti
% |------|-----|-----|
% x1     x2    x3    x4
%
x1=X(T(i,1));
x2=X(T(i,2));
x3=X(T(i,3));
x4=X(T(i,4));
elemKi=-alpha*mat_elem_dphi_P3(x1,x2,x3,x4)-beta*mat_elem_phi_dphi_P3(x1,x2,x3,x4)+gama*mat_elem_phi_P3(x1,x2,x3,x4);
end