function [ elemKi ] = mat_elemKi_P1(alpha,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x2=X(T(i,2));
%  utilisons la formule de Simpson pour calculer l'integrale:
 xm=(x1+x2)*0.5;
 A=(x2-x1)/6*(phi1_prime_P1(x1,x1,x2)*phi1_prime_P1(x1,x1,x2)+4*phi1_prime_P1(xm,x1,x2)*phi1_prime_P1(xm,x1,x2)+phi1_prime_P1(x2,x1,x2)*phi1_prime_P1(x2,x1,x2));
 B=(x2-x1)/6*(phi1_prime_P1(x1,x1,x2)*phi2_prime_P1(x1,x1,x2)+4*phi1_prime_P1(xm,x1,x2)*phi2_prime_P1(xm,x1,x2)+phi1_prime_P1(x2,x1,x2)*phi2_prime_P1(x2,x1,x2));
 C=(x2-x1)/6*(phi2_prime_P1(x1,x1,x2)*phi2_prime_P1(x1,x1,x2)+4*phi2_prime_P1(xm,x1,x2)*phi2_prime_P1(xm,x1,x2)+phi2_prime_P1(x2,x1,x2)*phi2_prime_P1(x2,x1,x2));
 elemKi=(-alpha)*[A B;B C];
end 