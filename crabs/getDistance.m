function distance = getDistance (xCapt, yCapt, xFish, yFish)

xDiff = xCapt - xFish;

yDiff = yCapt - yFish;

distance = sqrt((abs(xDiff)^2)+(abs(yDiff)^2));

endfunction
