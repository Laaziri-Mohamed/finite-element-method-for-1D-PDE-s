function [K,F] = AssemblageP2_v2(alpha,beta,gamma,f, X, T)
% Assemblage des matrices élémentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres élémentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
% 1) mat_elem_P2(alpha,X,T,i)
% 2) Mat_elem_SM_P2(f,X,T,i)
%
n = size(X,1); % nombre des noeuds
t = size(T,1); % nombre des éléments
K = zeros(n);
F = zeros(n,1);
% Assemblage de la matrice globale K

 for k=1:t % boucle sur les éléments
    
    elemKi = mat_elem_Global_P2_v2(alpha,beta,gamma,X,T,k);
    for i=1:3 %boucle sur les numéros locaux
    for j=1:3 %boucle sur les numéros locaux
      I=2*k+i-2; % numéros globaux dans K
      J=2*k+j-2; % numéros globaux dans K
      K(I,J)=K(I,J)+ elemKi(i,j);% l'assemblage
    end
    end
 end
% Assemblage du second membre élémentaire golbal F

   for k=1:t
    
     elemFi = mat_elem_sm_P2_v2(f,T,X,k);
     for i=1:3 %boucle sur les numéros locaux
        I=2*k+i-2; % numéros globaux dans K
        F(I)=F(I)+ elemFi(i);
     end
   end
end