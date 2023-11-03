function [xFish,yFish,thetaFish] = moveFish( x, y, theta, size, height, width)

fishMove = 75;

step = fishMove;

% return a y-position increased by step, but return the same x and theta values
xFish = x + fishMove;
yFish = y;
thetaFish = theta;


if (x > width - 1.25*size)
xFish = size;
yFish = rand * height;
thetaFish = theta;
% set the returned y-value to be size and return a new random x value between 0 and %
%width


endif

endfunction
