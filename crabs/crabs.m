function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
level = 1;

%capt
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
crabsCaught = 0;

%crab
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 50;

% fish
xFish = 50;
yFish = 1200;
thetaFish = 0;
sizeFish = 100;

% Draw the captain and initialize graphics handles

captGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);

fishGraphics = drawFish (xFish, yFish, thetaFish, sizeFish);
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

% print health status
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');

while(1)

% erase old fish
for i=1:length(fishGraphics)
delete(fishGraphics(i));
endfor

% move fish
[xFish,yFish,thetaFish] = moveFish(xFish, yFish, thetaFish, sizeFish, mapHeight,mapWidth);

% draw fish
fishGraphics = drawFish(xFish,yFish,thetaFish,sizeFish);

% read keyboard
cmd = kbhit(1);
if (cmd == 'Q')
break;
endif

if(cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.

% erase old captain
for (i=1:length( captGraphics ))
set( captGraphics(i), 'Visible', 'off' );
endfor

% move capt
[xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);

% draw new capt
captGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") % respond crab

%erase old crab
for (i=1:length(crabGraphics))
set(crabGraphics(i),'Visible','off');
endfor

%move crab
[xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight, mapWidth);

%draw new captain and crab
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

endif

%Capt touches fish
if (getDistance(xFish,yFish,xCapt,yCapt) < 3*sizeCapt )
healthCapt = healthCapt -2;

endif


%remove old and plot new health and points status to screen
delete(healthStatus);
delete(crabsCaughtStatus);
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');




fflush(stdout);
pause(.01)
endwhile
close all

endfunction
