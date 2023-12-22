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
## @deftypefn {} {@var{retval} =} heat_equation (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-01

function out = heat_equation(I, deltaT, n)
  [M, N]= size(I);
  %U = cell(1, n+1);
  U=I;
  for k=2:n+1
    Z=zeros(M, N);
    iteration=k
    Y = U;
    for i=2:M-1
      for j=2:N-1
        Z(i,j)=Y(i,j) + deltaT*(Y(i+1,j)+Y(i-1,j)+Y(i,j+1)+Y(i,j-1)-4*Y(i,j));
      endfor
    endfor
    U=Z;
  endfor
  out = U;
endfunction

