function R = getRotation (theta)

R = [cos(theta) - sin(theta); sin(theta) cos(theta) 0; 0 0 1]

endfunction
