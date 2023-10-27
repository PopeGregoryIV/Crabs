function fish = getFish (size)
% This function stores and returns the crab at the origin with zero heading in the
% Each colunm represents one point on the crab.
%
fishPt1 = [ -size; -size; 1];
fishPt2 = [ 0; 0; 1];
fishPt3 = [ size/2; -size/2; 1];
fishPt4 = [ 3*size/2; -size/2; 1];
%
fishPt5 = [ 3*size/2; -size/2; 1];
fishPt6 = [ size/2; size/2; 1];
fishPt7 = [-size; size; 1];

fish = [fishPt1, fishPt2, fishPt2, fishPt3, fishPt4, fishPt5, fishPt6, fishPt7];
endfunction

