function [K,M,N,F] = AssemblageP2(alpha,beta,gama,f, X, T) 
 % Assemblage des matrices elementaires "elemki" dans la matrice globale K 
 % Assemblage des seconds membres elementaires "elemFi" dans le second 
 % membre global F 
 % cette fonction fait appel aux fonctions: 
 %   1) mat_elemKi_P2(alpha,X,T,i); 
 %   2) mat_elemMi_P2(beta,X,T,i);
 %   3) mat_elemNi_P2(gama,X,T,i)
 %   4) SM_elem_P2(f,X,T,i) 
 %  
     n = size(X,1);   % nombre des noeuds 
     t = size(T,1);   % nombre des elements 
     K = zeros(n); 
     M = zeros(n);
     N = zeros(n);
     F = zeros(n,1); 
 
 
 % Assemblage de la matrice golbale K 
 % 
    for k=1:t % boucle sur les ?l?ments 
         elemKi = mat_elemKi_P2(alpha,X,T,k);  % matrice de l'élément numéro k
         elemMi = mat_elemMi_P2(beta,X,T,k);
         elemNi = mat_elemNi_P2(gama,X,T,k);
        for i=1:3     %boucle sur les numeros locaux 
            for j=1:3 
                I=2*k+i-2;                       % numeros globaux dans K 
                J=2*k+j-2; 
                K(I,J)=K(I,J)+ elemKi(i,j); 
                M(I,J)=M(I,J)+ elemMi(i,j); % l'assemblage 
                N(I,J)=N(I,J)+ elemNi(i,j);
            end 
        end 
    end 
 % Assemblage du second membre elementaire golbal F 
 % 
    for k=1:t   % boucle sur les elements 
        elemFi = SM_elem_P2(f,X,T,k);  % SM de l'element numero k 
        for i=1:3  %boucle sur les numeros locaux 
            I=2*k+i-2;                    % numeros globaux dans K 
            F(I)=F(I)+ elemFi(i);         % l'assemblage 
        end 
    end     
 end 
