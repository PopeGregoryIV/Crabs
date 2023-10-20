function [xCrab, yCrab, thetaCrab] = moveCrab(cmd,x,y,theta,height,width,size]

  if (cmd=="l")
    xCrab = x - dStep*cons(theta);
    yCrab = y + dStep*cons(theta);
    thetaCrab = theta;

  elseif (cmd=="K")
    xCrab = x - dStep*cons(theta);
    yCrab = y - dStep*cons(theta);
    thetaCrab = theta;

  elseif (cmd=="i")
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dStep*sin(theta);

  elseif
   xCrab = x;
   yCrab = y;
   thetaCrab = theta;

  endif

  endfunction
