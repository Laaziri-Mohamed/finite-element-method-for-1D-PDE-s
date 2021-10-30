function [K,M,N,F] = AssemblageP3_V2(alpha,beta,gama,f, X, T) 
 % Assemblage des matrices elementaires "elemki","elemMi"et"elemNi" dans la
 % matrice globale K,M et N
 % Assemblage des seconds membres elementaires "elemFi" dans le second 
 % membre global F 
 % cette fonction fait appel aux fonctions: 
 %   1) mat_elemKi_P3(alpha,X,T,i); 
 %   2) mat_elemMi_P3(beta);
 %   3) mat_elemNi_P3(gama,X,T,i)
 %   4) SM_elem_P3(f,X,T,i) 
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
         elemKi = mat_elemKi_P3_V2(alpha,X,T,k);  % matrice de l'élément numéro k,M et N
         elemMi = mat_elemMi_P3_V2(beta);
         elemNi = mat_elemNi_P3_V2(gama,X,T,k);
        for i=1:4     %boucle sur les numeros locaux 
            for j=1:4 
                I=3*k+i-3;                       % numeros globaux dans K 
                J=3*k+j-3; 
                K(I,J)=K(I,J)+ elemKi(i,j); 
                M(I,J)=M(I,J)+ elemMi(i,j); % l'assemblage 
                N(I,J)=N(I,J)+ elemNi(i,j);
            end 
        end 
    end 
 % Assemblage du second membre elementaire golbal F 
 % 
    for k=1:t   % boucle sur les elements 
        elemFi = SM_elem_P3_V2(f,X,T,k);  % SM de l'element numero k 
        for i=1:4  %boucle sur les numeros locaux 
            I=3*k+i-3;                    % numeros globaux dans K 
            F(I)=F(I)+ elemFi(i);         % l'assemblage 
        end 
    end     
 end 
