function [K,F] = AssemblageP3(alpha,beta,gama,f, X, T)
% Assemblage des matrices élémentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres élémentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
% 1) mat_elem_P3(alpha,beta,gama,X,T,i)
% 2) Mat_elem_SM_P3(f,X,T,i)
%
n = size(X,1); % nombre des noeuds
t = size(T,1); % nombre des éléments
K = zeros(n);
F = zeros(n,1);
% Assemblage de la matrice globale K

 for k=1:t % boucle sur les éléments
    elemKi = mat_elem_global_P3(alpha,beta,gama,X,T,k);
  for i=1:4 %boucle sur les numéros locaux
  for j=1:4 %boucle sur les numéros locaux
  I=3*k+i-3; % numéros globaux dans K
  J=3*k+j-3; % numéros globaux dans K
  K(I,J)=K(I,J)+ elemKi(i,j);% l'assemblage
  end
  end
end
% Assemblage du second membre élémentaire golbal F

   for k=1:t
     elemFi = Mat_elem_SM_P3(f,X,T,k);
  for i=1:4 %boucle sur les numéros locaux
     I=3*k+i-3; % numéros globaux dans K
     F(I)=F(I)+ elemFi(i);
  end
   end
end