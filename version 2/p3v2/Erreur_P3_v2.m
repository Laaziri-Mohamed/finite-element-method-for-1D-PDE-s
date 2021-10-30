function [y]= Erreur_P3_v2(ue,X,U)
S=0;
for i=2:size(X)
    E=(ue(X(i))-U(i))^2;
    S=S+E;
end
  y=sqrt(S); 
end
