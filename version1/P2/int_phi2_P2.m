 function y = int_phi2_P2(f,x1,x2,x3) 
 %calcule l'intégrale sur l'élément Ti de f*phi1 
 %moyennant la quadrature de Simpson  
 %               Ti 
 %       |--------|--------| 
 %       x1       x2       x3 
 %  

y=((x3-x1)/6)*(f(x1)*phi2_P2(x1,x1,x2,x3)+4*f(x2)*phi2_P2(x2,x1,x2,x3)+f(x3)*phi2_P2(x3,x1,x2,x3));
end
