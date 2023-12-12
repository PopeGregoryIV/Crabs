function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.

playGame = 1;
while(playGame)
  %draw start screen
    level = drawStartScreen("startScreen.png");

    while(1)

[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size

numFish = level;
maxFish = 20;

xCenter = mapWidth * 0.5;
yCenter = mapHeight * 0.5;

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

%fish
xFish = rand(1,maxFish) * mapWidth;
yFish = rand(1,maxFish) * mapHeight;
thetaFish = 0;
sizeFish = 75;
fishGraphics = zeros(8,maxFish);

% Draw the captain and initialize graphics handles

[captGraphics,xSpear,ySpear] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);

for k=1:numFish
  fishGraphics(:,k) = drawFish(xFish(k),yFish(k),thetaFish,sizeFish);
endfor

%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

% print health status
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');

while(1)

for k= 1:numFish

% erase old fish
  for i=1:length(fishGraphics(:,k))
    set(fishGraphics(i,k),'Visible','off');
  endfor

% move fish
  [xFish(k),yFish(k),thetaFish] = moveFish(xFish(k), yFish(k), thetaFish, sizeFish, mapHeight,mapWidth);

% draw fish
  fishGraphics(:,k)  = drawFish (xFish(k), yFish(k), thetaFish, sizeFish);

endfor

% read keyboard
cmd = kbhit(1);
if (cmd == 'Q' || healthCapt < 1)
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
[captGraphics,xSpear,ySpear] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

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

  for k= 1:numFish

  %Capt touches fish
  if (getDistance(xFish(k),yFish(k),xCapt,yCapt) < 3*sizeCapt )
    healthCapt = healthCapt -20;
  endif

  endfor

  %crab touches fish

  if (getDistance (xCrab, yCrab, xFish(k), yFish(k)) < 3*sizeCrab)
      numFish = numFish + 1;
      if (numFish > maxFish)
        numFish = maxFish;
      endif
  endif
%capt touches crab

  if (getDistance (xSpear, ySpear, xCrab, yCrab) < 3*sizeCapt)
    crabsCaught = crabsCaught + 1;
    xCrab = rand * 2000;
    yCrab = rand * 1500;

    for (i=1:length(crabGraphics))
      set(crabGraphics(i),'Visible','off');
    endfor

  [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight, mapWidth);

  crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);
  endif

if isOnMap(xCapt,yCapt,mapWidth,mapHeight,100) == 0

 thetaCapt = thetaCapt + pi;
endif

if isOnMap(xCrab,yCrab,mapWidth,mapHeight,100) == 0
   xChange = difference (xCrab, xCenter );

    yChange = difference (yCrab, yCenter );

     if xChange < 0
       xCrab = xCrab - 150;

       else
         xCrab = xCrab + 150;
     endif

     if yChange < 0
       yCrab = yCrab - 150;

       else
         yCrab = yCrab + 150;
     endif
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

   endwhile
  %draw end screen
    playGame = drawEndScreen("endScreen.png",crabsCaught,numCrabs);

 endwhile

close all
clear

endfunction
