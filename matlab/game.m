%% Crowd Simulation
% Andy Toth
% 06 APR 18

%% Simulation Parameters
% Member Setup
nF = 20; %Number of followers
nL = 1; %Number of leaders
tgt = [2000, 1400]; %Target coordinates.

% Frame rate  
T = 0.01; % 100 hz 

% Window Setup
width=2000; height=1400;
myfig = configureWindow(width,height);



%% Generate graphic objects and set initial positions

[Leader, Follower] = CreateMembers(nL, nF); %create members

% Set leader positions.
for q = 1:nL
    moveXto(Leader(q), width/2); 
    moveYto(Leader(q), height/2);
end

% Set follwer positions.
for q = 1:nF
    moveXto(Follower(q),rand()*width/2 + 0.25*width)
    moveYto(Follower(q),rand()*height/2 + 0.25*height)
end

%% Set member speed

for q = 1:nF
    V_Fx(q) = -100 + (100-(-100).*rand(3,1));   % values between 170 and 220 units per second 
    V_Fy(q) = -100 + (100-(-100).*rand(3,1));
end


%% Contributors
% Written by MIDN 2/C Andrew Toth.
% Based on code by B. E. Bishop, J. S. Donnal, and J. A. Piepmeier.