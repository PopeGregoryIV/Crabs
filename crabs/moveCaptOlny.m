function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta );

dTheta = pi/6;
dStep = 50;

if( cmd == "w" ) %move forward
xCapt = x + dstep*cos(theta);
yCapt = y + dstep*sin(theta);
thetaCapt = theta;

elseif ( cmd == "d" ) %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta + dtheta;

elseif ( cmd == "a" ) %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dtheta;

else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;

endif

endfunction

