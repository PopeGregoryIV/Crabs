function crab = getCrab (sizeCrab )
% This function stores and returns the crab at the origin with zero heading in the
%form of a matirx.
% Each colunm represents one point on the crab.
%body
crabPt1 = [ sizeCrab/2; sizeCrab; 1];
crabPt2 = [ -sizeCrab/2; sizeCrab; 1];
crabPt3 = [ -sizeCrab/2; -sizeCrab; 1];
crabPt4 = [ sizeCrab/2; -sizeCrab; 1];
%claws
crabPt5 = [ 2*sizeCrab; sizeCrab/4; 1];
crabPt6 = [ 2*sizeCrab; -sizeCrab/4; 1];
%legs
crabPt7 = [0; 1.5*sizeCrab; 1];
crabPt8 = [-sizeCrab; 1.5*sizeCrab; 1];
crabPt9 = [0; -1.5*sizeCrab; 1];
crabPt10 = [-sizeCrab; -1.5*sizeCrab; 1];
crab = [ crabPt1, crabPt2, crabPt3, crabPt4, crabPt5, crabPt6, crabPt7, crabPt8, crabPt9, crabPt10];
endfunction
