cmd = "null"; % initial command

while ( cmd != "Q") % While not quit, read keyboard and respond

cmd = kbhit(); % Read the keyboard.

if( cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.

% erase old captain
for i=1:length( captGraphics )
set( captGraphics(i), 'Visible', 'off' );


endfor
% move capt
[xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);
% draw new capt
 captGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

endif

endwhile

