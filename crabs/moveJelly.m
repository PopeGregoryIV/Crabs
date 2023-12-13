function [xJelly,yJelly,thetaJelly] = moveJelly(x, y, theta, size, height,width)

moveScale = 50;
step = moveScale;
yJelly = y + step;
xJelly = x;
thetaJelly = theta;
if (yJelly > height-10*size)
yJelly=size;
xJelly= rand * width;
endif
endfunction

