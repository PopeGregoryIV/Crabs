function fish = getfish (size )
% This function stores and returns the crab at the origin with zero heading in the
form of a matirx.
% Each colunm represents one point on the crab.
%body
 = [ size/2; size; 1];
fishPt2 = [ -size/2; size; 1];
fishPt3 = [ -size/2; -size; 1];
fishPt4 = [ size/2; -size; 1];
%claws
crabPt5 = [ 2*size; size/4; 1];
crabPt6 = [ 2*size; -size/4; 1];
%legs
crabPt7 = [0; 1.5*size; 1];
crabPt8 = [-size; 1.5*size; 1];
crabPt9 = [0; -1.5*size; 1];
crabPt10 = [-size; -1.5*size; 1];
crab = [ ];
endfunction

