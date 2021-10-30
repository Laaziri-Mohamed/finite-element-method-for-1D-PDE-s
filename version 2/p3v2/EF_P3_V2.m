function [U] = EF_P3_V2(alpha,beta,gama,f,a,b,h) 
% fonction traite l'equation alpha*u''+beta*u'+gama*u=f sur un[a,b] avec u(a)=u(b)=0 
 % 
 %Creation de la matrice globale K et du second membre globale F 
 [X,T] = MaillageP3(a, b, h); 
 Nn=size(X,1);      %nombre des noeuds 
 [K,M,N,F] = AssemblageP3_V2(alpha,beta,gama,f, X, T); 
 % 
 % Conditions aux bords 
 for j=1:Nn 
     K(1,j)=0.; 
     K(Nn,j)=0.; 
     M(1,j)=0.; 
     M(Nn,j)=0.; 
     N(1,j)=0.; 
     N(Nn,j)=0.;
 end 
 K(1,1)=1.; 
 K(Nn,Nn)=1.; 
 M(1,1)=1.; 
 M(Nn,Nn)=1.;
 N(1,1)=1.; 
 N(Nn,Nn)=1.;
 % 
 F(1)=0.; 
 F(Nn)=0.; 
 % 
 % Résolution 
 U=(K+M+N)\F; 
 end 

 