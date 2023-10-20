function fishGraphics = drawFish (xfish, yfish, thetafish, sizefish)
% This function draws the crab by rotating and shifting the crab
% as it appears in getCrab.m where it is at the origin with zero heading.
%get crab at the origin
fish = getFish(sizefish);

R = getRotation(thetafish);
fishRotated = R*fish;


U = getTranslation(xfish,yfish);
fish = U*fishRotated;

%get crab points
pt1=fish( :, 1);
pt2=fish( :, 2);
pt3=fish( :, 3);
pt4=fish( :, 4);
pt5=fish( :, 5);
pt6=fish( :, 6);
pt7=fish( :, 7);

%draw the crab body
fishGraphics(1) = drawLine(pt1, pt2, "g");
fishGraphics(2) = drawLine(pt2, pt3, "g");
fishGraphics(3) = drawLine(pt3, pt4, "g");
fishGraphics(4) = drawLine(pt4, pt5, "g");

%draw crab pinchers
fishGraphics(5) = drawLine(pt5, pt6, "g");
fishGraphics(6) = drawLine(pt6, pt2, "g");

% draw legs
fishGraphics(7) = drawLine(pt2, pt7, "g");
fishGraphics(8) = drawLine(pt7, pt1, "g");

endfunction

