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
## @deftypefn {} {@var{retval} =} compute_2derivatives (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-01

function [I_xx, I_yy, I_xy] = compute_2derivatives (I)
[ny, nx, s]= size(I);
% second order's derivatives estimates
I_xx = I(:, [2:nx nx],:)+I(:,[1 1:nx-1],:)-2*I;
I_yy = I([2:ny ny],:,:)+ I([1 1:ny-1],:,:)-2*I;
Dp = I([2:ny ny],[2:nx nx],:)+ I([1 1:ny-1],[1 1:nx-1],:);
Dm = I([1 1:ny-1],[2:nx nx],:)+ I([2:ny ny],[1 1:nx-1],:);
I_xy = (Dp-Dm)/4;
endfunction
