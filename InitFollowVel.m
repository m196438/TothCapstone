function [V_Fx, V_Fy ] = InitFollowVel(lowlimF, uplimF, nF)
for q = 1:nF
    V_Fx(q) = lowlimF + 2*uplimF.*rand(1,1);   % set X speeds
    V_Fy(q) = lowlimF + 2*uplimF.*rand(1,1);   % set Y speeds
end
end

