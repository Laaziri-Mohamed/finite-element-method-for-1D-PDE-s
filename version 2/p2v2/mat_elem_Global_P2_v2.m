function [elemG]=mat_elem_Global_P2_v2(alpha,beta,gamma,X,T,i)
  %calcul de la matrice elementaire globale de alpha u"+beta u' +gamma u 
%sur l'element de référence TR=[-1,1]
%                   TR
%          |---------|-----------|
%          -1                    1
x1=X(T(i,1));
x3=X(T(i,3));
K=(2/(x3-x1))*mat_elem_dphi_P2_v2(alpha);
M=mat_elem_phi_dphi_P2_v2(beta);
L=((x3-x1)/2)*mat_elem_phi_P2_v2(gamma);
elemG=K+M+L;
end