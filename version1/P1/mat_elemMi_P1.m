function [ elemMi ] = mat_elemMi_P1(beta,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x2=X(T(i,2));

%  utilisons la formule de Simpson pour calculer l'integrale:
xm=(x1+x2)*0.5;
 A=(x2-x1)/6*(phi1_P1(x1,x1,x2)*phi1_prime_P1(x1,x1,x2)+4*phi1_P1(xm,x1,x2)*phi1_prime_P1(xm,x1,x2)+phi1_P1(x2,x1,x2)*phi1_prime_P1(x2,x1,x2));
 B=(x2-x1)/6*(phi2_P1(x1,x1,x2)*phi1_prime_P1(x1,x1,x2)+4*phi2_P1(xm,x1,x2)*phi1_prime_P1(xm,x1,x2)+phi2_P1(x2,x1,x2)*phi1_prime_P1(x2,x1,x2));
 C=(x2-x1)/6*(phi1_P1(x1,x1,x2)*phi2_prime_P1(x1,x1,x2)+4*phi1_P1(xm,x1,x2)*phi2_prime_P1(xm,x1,x2)+phi1_P1(x2,x1,x2)*phi2_prime_P1(x2,x1,x2));
 D=(x2-x1)/6*(phi2_P1(x1,x1,x2)*phi2_prime_P1(x1,x1,x2)+4*phi2_P1(xm,x1,x2)*phi2_prime_P1(xm,x1,x2)+phi2_P1(x2,x1,x2)*phi2_prime_P1(x2,x1,x2));
elemMi=(-beta)*[A B;C D];
end 