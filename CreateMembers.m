function [Leader, Follower ] = CreateMembers(nL, nF)

%Define size of members
Sx = [-40/2 -40/2 40/2 40/2 -40/2];
Sy = [-30/2 30/2 30/2 -30/2 -30/2];

%Create members
for q = 1:nL 
Leader(q) = fill(Sx, Sy, 'y');
end
for q = 1:nF
Follower(q) = fill(Sx, Sy, 'b');

end