function Rxyz = XYZConvention(psi,theta,phi)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% X-Y-Z convention: Roll-Pitch-Yaw convention
%
% roll: psi (rotation about x-axis)
% pitch: theta (rotation about y-axis)
% yaw: phi (rotation about z-axis)
%
% Rx = [1, 0, 0;...
%     0, cos(psi), sin(psi);...
%     0, -sin(psi), cos(psi)];
% Ry = [cos(theta), 0, -sin(theta);...
%     0, 1, 0;...
%     sin(theta), 0, cos(theta)];
% Rz = [cos(phi), sin(phi), 0;...
%     -sin(phi), cos(phi), 0;...
%     0, 0, 1];
% 
% Rxyz = Rz*(Ry*Rx);
% 
% By V.C. Chen
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Rxyz= [cos(theta)*cos(phi),...
       sin(psi)*sin(theta)*cos(phi)+cos(psi)*sin(phi),...    
      -cos(psi)*sin(theta)*cos(phi)+sin(psi)*sin(phi);...
      -cos(theta)*sin(phi),...  
      -sin(psi)*sin(theta)*sin(phi)+cos(psi)*cos(phi),... 
       cos(psi)*sin(theta)*sin(phi)+sin(psi)*cos(phi);... 
       sin(theta),...
      -sin(psi)*cos(theta),...
       cos(psi)*cos(theta)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

