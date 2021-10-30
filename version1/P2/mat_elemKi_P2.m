function [ elemKi ] = mat_elemKi_P2(alpha,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |-------|--------|
%       x1     x2        x3
%
x1=X(T(i,1));
x2=X(T(i,2));
x3=X(T(i,3));
% utilisons la formule de Simpson pour calculer l'integrale:
 A=(x3-x1)/6*(phi1_prime_P2(x1,x1,x2,x3)*phi1_prime_P2(x1,x1,x2,x3)+4*phi1_prime_P2(x2,x1,x2,x3)*phi1_prime_P2(x2,x1,x2,x3)+phi1_prime_P2(x3,x1,x2,x3)*phi1_prime_P2(x3,x1,x2,x3));
 B=(x3-x1)/6*(phi1_prime_P2(x1,x1,x2,x3)*phi2_prime_P2(x1,x1,x2,x3)+4*phi1_prime_P2(x2,x1,x2,x3)*phi2_prime_P2(x2,x1,x2,x3)+phi1_prime_P2(x3,x1,x2,x3)*phi2_prime_P2(x3,x1,x2,x3));
 C=(x3-x1)/6*(phi1_prime_P2(x1,x1,x2,x3)*phi3_prime_P2(x1,x1,x2,x3)+4*phi1_prime_P2(x2,x1,x2,x3)*phi3_prime_P2(x2,x1,x2,x3)+phi1_prime_P2(x3,x1,x2,x3)*phi3_prime_P2(x3,x1,x2,x3));
 D=(x3-x1)/6*(phi2_prime_P2(x1,x1,x2,x3)*phi2_prime_P2(x1,x1,x2,x3)+4*phi2_prime_P2(x2,x1,x2,x3)*phi2_prime_P2(x2,x1,x2,x3)+phi2_prime_P2(x3,x1,x2,x3)*phi2_prime_P2(x3,x1,x2,x3));
 E=(x3-x1)/6*(phi2_prime_P2(x1,x1,x2,x3)*phi3_prime_P2(x1,x1,x2,x3)+4*phi2_prime_P2(x2,x1,x2,x3)*phi3_prime_P2(x2,x1,x2,x3)+phi2_prime_P2(x3,x1,x2,x3)*phi3_prime_P2(x3,x1,x2,x3));
 F=(x3-x1)/6*(phi3_prime_P2(x1,x1,x2,x3)*phi3_prime_P2(x1,x1,x2,x3)+4*phi3_prime_P2(x2,x1,x2,x3)*phi3_prime_P2(x2,x1,x2,x3)+phi3_prime_P2(x3,x1,x2,x3)*phi3_prime_P2(x3,x1,x2,x3));
 elemKi=(-alpha)*[A B C;B D E;C E F];
end 