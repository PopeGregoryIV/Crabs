function [xFish,yFish,thetaFish] = moveFish( x, y, theta, size, height, width)

fishMove = 50;

step = fishMove;

% return a y-position increased by step, but return the same x and theta values
xFish = x + fishMove;
yfish = y;
thetaFish = theta;
if (x > width-10*size)
xFish = 0 + 10*size
yFish = rand(1000)
thetaFish = theta
% set the returned y-value to be size and return a new random x value between 0 and %
%width


endif

endfunction
