function [X, T] = MaillageP3(a, b, h)
%----------------------------
%Génére un maillage de type P3
% X la table des coordonnées 
% T la table de connectivité moyennant les indices
%----------------------------
        n = floor(3*(b - a)/h) + 1;
        X = a + (1/3)*h*(0:n-1)';
      
    [~, I] = sort(X);
    T = [ I(1:3:n-3), I(2:3:n-2), I(3:3:n-1), I(4:3:n)];
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
 