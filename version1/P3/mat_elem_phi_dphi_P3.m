function [L] = mat_elem_phi_dphi_P3(x1,x2,x3,x4)

[phi1x1] = phi1_P3(x1, x1, x2, x3, x4);
[phi2x1] = phi2_P3(x1, x1, x2, x3, x4);
[phi3x1] = phi3_P3(x1, x1, x2, x3, x4);
[phi4x1] = phi4_P3(x1, x1, x2, x3, x4);
[phi1x2] = phi1_P3(x2, x1, x2, x3, x4);
[phi2x2] = phi2_P3(x2, x1, x2, x3, x4);
[phi3x2] = phi3_P3(x2, x1, x2, x3, x4);
[phi4x2] = phi4_P3(x2, x1, x2, x3, x4);
[phi1x3] = phi1_P3(x3, x1, x2, x3, x4);
[phi2x3] = phi2_P3(x3, x1, x2, x3, x4);
[phi3x3] = phi3_P3(x3, x1, x2, x3, x4);
[phi4x3] = phi4_P3(x3, x1, x2, x3, x4);
[phi1x4] = phi1_P3(x4, x1, x2, x3, x4);
[phi2x4] = phi2_P3(x4, x1, x2, x3, x4);
[phi3x4] = phi3_P3(x4, x1, x2, x3, x4);
[phi4x4] = phi4_P3(x4, x1, x2, x3, x4);
[ dphi1x1] = dphi1_P3(x1, x1, x2, x3, x4);
[ dphi2x1] = dphi2_P3(x1, x1, x2, x3, x4);
[ dphi3x1] = dphi3_P3(x1, x1, x2, x3, x4);
[ dphi4x1] = dphi4_P3(x1, x1, x2, x3, x4);
[ dphi1x2] = dphi1_P3(x2, x1, x2, x3, x4);
[ dphi2x2] = dphi2_P3(x2, x1, x2, x3, x4);
[ dphi3x2] = dphi3_P3(x2, x1, x2, x3, x4);
[ dphi4x2] = dphi4_P3(x2, x1, x2, x3, x4);
[ dphi1x3] = dphi1_P3(x3, x1, x2, x3, x4);
[ dphi2x3] = dphi2_P3(x3, x1, x2, x3, x4);
[ dphi3x3] = dphi3_P3(x3, x1, x2, x3, x4);
[ dphi4x3] = dphi4_P3(x3, x1, x2, x3, x4);
[ dphi1x4] = dphi1_P3(x4, x1, x2, x3, x4);
[ dphi2x4] = dphi2_P3(x4, x1, x2, x3, x4);
[ dphi3x4] = dphi3_P3(x4, x1, x2, x3, x4);
[ dphi4x4] = dphi4_P3(x4, x1, x2, x3, x4);

A = [dphi1x1 dphi1x2 dphi1x3 dphi1x4;dphi2x1 dphi2x2 dphi2x3 dphi2x4;dphi3x1 dphi3x2 dphi3x3 dphi3x4;dphi4x1 dphi4x2 dphi4x3 dphi4x4];
B = [phi1x1 phi1x2 phi1x3 phi1x4;phi2x1 phi2x2 phi2x3 phi2x4;phi3x1 phi3x2 phi3x3 phi3x4;phi4x1 phi4x2 phi4x3 phi4x4];
L=zeros(4,4);
for i=1:4
   for j=1:4
     E=[A(i,1)*B(j,1) A(i,2)*B(j,2) A(i,3)*B(j,3) A(i,4)*B(j,4)];
     y=((x4-x1)/8)*(E(1)+3*(E(2)+E(3))+E(4));
L(i,j)=y;
   end
end
end