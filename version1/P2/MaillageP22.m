function [X, T] = MaillageP22(a, b, h) 
 %---------------------------- 
 % Genere un maillage de type P2 
 % X la table des coordonnees  
 % T la table de connectivite moyennant les indices 
 %---------------------------- 
     n = floor(2*(b - a)/h) + 1; 
     X = a + 0.5*h*(0:n-1)';          
     [~, I] = sort(X); 
    T = [ I(1:2:n-2), I(2:2:n-1),I(3:2:n)]; 
 % 
 %Partie affichage
%
    figure('name', sprintf('Representation du Maillage ( n = %d )', n) );
    plot(X, zeros(1,n), 'b-o');
    for i = 1:size(X,1)
        text(X(i), 0.1, sprintf('X_{%d}', i), 'color', 'blue'); 
    end
    
    for i = 1:size(T,1)
        text(X(T(i,1)) + 2*(X(T(i,2))-X(T(i,1)))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
    end      
 end  

