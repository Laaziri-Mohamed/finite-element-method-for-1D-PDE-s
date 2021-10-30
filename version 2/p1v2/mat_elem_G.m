function [elemG]=mat_elem_G(alpha,beta,gamma,X,T,i)
  
%calcul de la matrice elementaire globale de alpha u"+beta u' +gamma u 
%sur l'element de référence TR=[-1,1]
%                   TR
%          |--------------------|
%         -1                    1
x1=X(T(i,1));
x2=X(T(i,2));
K=(2/(x2-x1))*mat_elemKi_PP1(alpha);
M=mat_elemMi_PP1(beta);
L=((x2-x1)/2)*mat_elemLi_PP1(gamma);
elemG=K+M+L;
end