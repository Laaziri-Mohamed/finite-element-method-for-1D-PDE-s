function [er]=erreur_P2_v2(ue,U,X)
s=0;
for i=2:size(X)
    T=abs(ue(X(i))-U(i))^2;
    s=s+T;
end 
  er=sqrt(s);
end