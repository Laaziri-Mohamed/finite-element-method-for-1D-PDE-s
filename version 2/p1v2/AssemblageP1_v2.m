function [K,F] = AssemblageP1_v2(alpha,beta,gamma, X,f, T)
% Assemblage des matrices �l�mentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres �l�mentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
%    1) mat_elem_P1(alha,X,T,i)
%    2) SM_elem_P1(f,X,T,i)
%
    n = size(X,1);   % nombre des noeuds
    t = size(T,1);   % nombre des �l�ments
    
    K = zeros(n);    
    F = zeros(n,1);

% Assemblage de la matrice golbale K
%
   for k=1:t   % boucle sur les �l�ments
       elemG = mat_elem_G_P1_v2(alpha,beta,gamma,X,T,k);  
     for i=1:2  %boucle sur les num�ros locaux
     for j=1:2  %boucle sur les num�ros locaux
           I=k+i-1;                            % num�ros globaux dans K
           J=k+j-1;                            % num�ros globaux dans K
           K(I,J)=K(I,J)+ elemG(i,j);         % l'assemblage
     end
     end    
   end

% Assemblage du second membre �l�mentaire golbal F
%
   for k=1:t   % boucle sur les �l�ments
       elemFi = SM_elem_P1_v2(f,T,X,k);  % SM de l'�l�ment num�ro k
     for i=1:2  %boucle sur les num�ros locaux
         I=k+i-1;                            % num�ros globaux dans K
         F(I)=F(I)+ elemFi(i);         % l'assemblage
     end
   end    
end
