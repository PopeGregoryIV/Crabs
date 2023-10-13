function lineHandle = drawLine ( pointA, pointB, color)
x = [ pointA(1); pointB(1)];
y = [ pointA(2); pointB(2)];

lineHandle = plot ( x, y, color);
set(lineHandle,"LineWidth",3);
endfunction
