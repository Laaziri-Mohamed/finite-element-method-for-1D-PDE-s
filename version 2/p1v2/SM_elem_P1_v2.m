function [ elemFi ] = SM_elem_P1_v2(f,T,X,i)
%calcule le second membre élémentaire dans l'élément de reference
%               TR
%       |--------|--------|
%      -1        0        1
%elle fait appel aux deux fonctions:
%  y = int_f_phi1(f) 
%  y = int_f_phi2(f)
x1=X(T(i,1));
x2=X(T(i,2));
elemFi=[((x2-x1)/2)*f((x1+x2)/2);((x2-x1)/2)*f((x1+x2)/2)];
%
end