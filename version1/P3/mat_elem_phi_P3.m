function [L] = mat_elem_phi_P3(x1,x2,x3,x4)

[phi1x1] = phi1_P3(x1, x1, x2, x3, x4); % puisque la fonction phi1_P2 retourne d'après ce qui précède deux valeurs phi(y1) et sa dérivée de phi(y2) 
[phi2x1] = phi2_P3(x1, x1, x2, x3, x4);
[phi3x1] = phi3_P3(x1, x1, x2, x3, x4);
[phi4x1] = phi4_P3(x1, x1, x2, x3, x4);
[phi1x2] = phi1_P3(x2, x1, x2, x3, x4);
[phi2x2] = phi2_P3(x2, x1, x2, x3, x4);
[phi3x2] = phi3_P3(x2, x1, x2, x3, x4);
[phi4x2] = phi4_P3(x2, x1, x2, x3, x4);
[phi1x3] = phi1_P3(x3, x1, x2, x3, x4);
[phi2x3] = phi2_P3(x3, x1, x2, x3, x4);
[phi3x3] = phi3_P3(x3, x1, x2, x3, x4);
[phi4x3] = phi4_P3(x3, x1, x2, x3, x4);
[phi1x4] = phi1_P3(x4, x1, x2, x3, x4);
[phi2x4] = phi2_P3(x4, x1, x2, x3, x4);
[phi3x4] = phi3_P3(x4, x1, x2, x3, x4);
[phi4x4] = phi4_P3(x4, x1, x2, x3, x4);
% la matrice B stock les fonctions de forme
B = [phi1x1 phi1x2 phi1x3 phi1x4;phi2x1 phi2x2 phi2x3 phi2x4;phi3x1 phi3x2 phi3x3 phi3x4;phi4x1 phi4x2 phi4x3 phi4x4];
L=zeros(4,4);
for i=1:4
   for j=1:4
     E=[B(i,1)*B(j,1) B(i,2)*B(j,2) B(i,3)*B(j,3) B(i,4)*B(j,4)];
     y=((x4-x1)/8)*(E(1)+3*(E(2)+E(3))+E(4));
L(i,j)=y;
   end
end
end