%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Global Human Walk:
%
% Based on "A global human walking model with real-time kinematic
% personification", by R. Boulic, N.M. Thalmann, and D. Thalmann
% The Visual Computer, vol.6, pp.344-358, 1990
% This model i based on biomechanical experimental data.
% 
% By V.C. Chen
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all

% human walking model
showplots = 'n'; % show translation and rotation of body segments
formove = 'y';  % forward walking
animove = 'y'; % display animation
genmovie = 'n'; % generate movie file

% relative velocity defined by average walking velocity normalized by the
% height from the toe to the hip: Ht
rv = 1.0;     % relative velocity (from 0 to 3)
nt = 2048;   % number of frames per cycle
if mod(nt,2) == 1
    nt = nt+1;
end
numcyc = 3; % number of cycle
Height = 1.8;

[segment,seglength,T] = HumanWalkingModel(showplots, formove,...
                         animove, genmovie, Height, rv, nt, numcyc);
                     
[data,TF] = RadarReturnsFromWalkingHuman(segment,seglength,T);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

