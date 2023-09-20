## Copyright (C) 2023 sim26
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} getTranslation (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: sim26 <sim26@FH202-LAB21W>
## Created: 2023-09-15

function T = getTranslation (dx, dy)

T = [1 0 dx; 0 0 dy; 0 0 1];
endfunction
