function  y = phi3_P2(x, x1, x2, x3) 
 %calcule la fonction de forme phi1 telle que:  
 %     phi3(x1)=0 et phi3(x2)=0 et phi3(x3)=1 
 %               Ti 
 %       |-------|--------| 
 %       x1      x2       x3 
 % phi3(x)=a*x^2+b*x+c on pose et abc=[a;b;c] 
 abc=[x1^2 x1 1;x2^2 x2 1;x3^2 x3 1]\[0;0;1]; 
     y = polyval(abc,x); 
 end  