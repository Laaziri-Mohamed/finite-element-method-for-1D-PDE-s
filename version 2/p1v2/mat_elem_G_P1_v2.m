function [elemG]=mat_elem_G_P1_v2(alpha,beta,gamma,X,T,i)
  
%calcul de la matrice elementaire globale de alpha u"+beta u' +gamma u 
%sur l'element de r�f�rence TR=[-1,1]
%                   TR
%          |--------------------|
%         -1                    1
x1=X(T(i,1));
x2=X(T(i,2));
K=(2/(x2-x1))*mat_elemKi_P1_v2(alpha);
M=mat_elemMi_P1_v2(beta);
L=((x2-x1)/2)*mat_elemLi_P1_v2(gamma);
elemG=K+M+L;
end