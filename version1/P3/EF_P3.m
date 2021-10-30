function [U] = EF_P3(alpha,beta,gama,f,a,b,h)

[X, T] = MaillageP3(a, b, h);
N=size(X,1); %nombre des noeuds
[K,F] = AssemblageP3(alpha,beta,gama,f, X, T);
%
% Conditions aux bords
for j=1:N
K(1,j)=0.;
K(N,j)=0.;
end
K(1,1)=1.;
K(N,N)=1.;
%
F(1)=0;
F(N)=0;
%
% Résolution
U=K\F;
end