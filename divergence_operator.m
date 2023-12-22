## Copyright (C) 2023 McKing
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
## @deftypefn {} {@var{retval} =} divergence_operator (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-21

function M = divergence_operator(px, py)
% compute the divergence of a vector (p1,p2)
% px and py have the same size
% (satisfying div = −(grad)*)
% Syntax: div(px,py)
% Afficher la valeur de py
[ny,nx,s] = size(px);
px_x = (px(:,[2:nx nx],:) - px(:,[1 1:nx-1],:))/2;
py_y = (py([2:ny ny],:,:) - py([1 1:ny-1],:,:))/2;
M = px_x + py_y;
endfunction


