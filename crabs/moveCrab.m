function [xCrab, yCrab, thetaCrab] = moveCrab(cmd,x,y,theta,height,width,size)

dStep = 50;
dTheta = pi/6;

% move right
  if (cmd=="l")
    xCrab = x - dStep*sin(theta);
    yCrab = y + dStep*cos(theta);
    thetaCrab = theta;

%move left
  elseif (cmd=="k")
    xCrab = x + dStep*sin(theta);
    yCrab = y - dStep*cos(theta);
    thetaCrab = theta;

% rotate clockwise
  elseif (cmd=="i")
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;

  elseif (cmd== ",")
   xCrab = x;
   yCrab = y;
   thetaCrab = theta - dTheta;

  else
   xCrab = x;
   yCrab = y;
   thetaCrab = theta;

  endif

  endfunction
