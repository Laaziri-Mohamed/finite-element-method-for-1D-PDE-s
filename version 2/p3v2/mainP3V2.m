%% pour validation
clear
clc

a=0;
b=1 ;
h=0.01;
alpha=1;
beta=1;
gama=1;
ue=@(x)x*(x-1);
f=@(x)x^2+x+1;
[X, T] = MaillageP3(a, b, h);
[U] = EF_P3_V2(alpha,beta,gama,f,a,b,h);
% Post-traitement
%%%%%%   comparaison graphique
figure('name', 'Comparaision: solutions exacte et approchée '); fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
%%%%%%   Analyse d'erreur
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(i);
end
figure('name', 'analyse erreur'); plot(X,erreur, 'r-o');
ylabel('erreur');
xlabel('noeuds');