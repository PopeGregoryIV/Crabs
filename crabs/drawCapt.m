function captGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
% In the future, this function will draw the captain at the given
% position (xCapt , yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith vector entry contains the graphics handle of ith line of the captain.
% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizeCapt is a parameter passed into drawCapt.
capt = getCapt(sizeCapt);
% TODO : Rotate captain from zero heading to heading thetaCapt
R = getRotation(thetaCapt);
captRotated = R*capt;

% TODO : Shift the captain from (0 , 0) to (xCapt , yCapt)
T = getTranslation(xCapt,yCapt);
capt = T*capt;

% Extract the captain points from the captain matrix capt.
pt1=capt( : , 1);
pt2=capt( : , 2);
pt3=capt( : , 3);
pt4=capt( : , 4);
pt5=capt( : , 5);
pt6=capt( : , 6);
pt7=capt( : , 7);
pt8=capt( : , 8);
pt9=capt( : , 9);
pt10=capt( : , 10);
pt11=capt( : , 11);
pt12=capt( : , 12);
pt13=capt( : , 13);
pt14=capt( : , 14);
pt15=capt( : , 15);
pt16=capt( : , 16);
% Draw the captain and set the return vector of graphics handles.
captGraphics(1) = drawLine(pt1 , pt2 , "k");
captGraphics(2) = drawLine(pt2 , pt3 , "k");
captGraphics(3) = drawLine(pt2 , pt5 , "k");
captGraphics(4) = drawLine(pt4 , pt5 , "k");
captGraphics(5) = drawLine(pt5 , pt6 , "k");
captGraphics(6) = drawLine(pt6 , pt1 , "k");
captGraphics(7) = drawLine(pt7 , pt8 , "k");
captGraphics(8) = drawLine(pt8 , pt9 , "k");
captGraphics(9) = drawLine(pt9 , pt10 , "k");
captGraphics(10) = drawLine(pt1 , pt11 , "k");
captGraphics(11) = drawLine(pt6 , pt12 , "k");
captGraphics(12) = drawLine(pt13 , pt14 , "k");
captGraphics(13) = drawLine(pt15 , pt16 , "k");
endfunction

