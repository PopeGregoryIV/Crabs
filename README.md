# Crabs

Function: getCapt: number-> Matrix 

purpose: this function generates a matrix representation of the captain character at the origin with 0 heading. 
its input-number   is the size of the captain character to be returned. each column of the captain matrix is a point 
of the captain the points column vectors of the form  (x,y,z) 

Dependencys: no dependecys 

call: capt = getCapt 50 will generate a matrix of capt size 50 

sidee effects: none 

Function: captainGraphics: matrix-> scene 

purpose: this function takes points from a matrix and plots them to create graphics for the chaptain character. 

dependecys: getCapt, drawLine

side effects: draws a line between points in the matrix



