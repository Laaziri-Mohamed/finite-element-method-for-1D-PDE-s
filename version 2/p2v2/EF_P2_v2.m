function [U] = EF_P2_v2(alpha,beta,gamma,f,a,b,h)

[X, T] =MaillageP2_v2(a, b, h);
N=size(X,1); %nombre des noeuds
[K,F] = AssemblageP2_v2(alpha,beta,gamma,f, X, T);
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