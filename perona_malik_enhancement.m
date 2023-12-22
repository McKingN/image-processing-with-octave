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
## @deftypefn {} {@var{retval} =} perona_malik_enhancement (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-22

function out = perona_malik_enhancement (I, alpha, deltaT, sigma, n)
  disp(n); % Afficher la valeur de n
  [M, N]= size(I);
  %U = cell(1, n+1);
  U=I;
  for k=2:n+1
    Z=zeros(M, N);
    iteration=k
    [U_x, U_y] = compute_derivatives(U);
    %c = 1./(sqrt(1+(((convolution(U_x, sigma)).^2) + (((convolution(U_y, sigma)).^2))/(alpha^2));
    c = 1./sqrt(1+ (((convolution(U_x, sigma)).^2) + ((convolution(U_y, sigma)).^2)/(alpha^2)));
    U = U + deltaT*divergence_operator(c.*U_x, c.*U_y);
  endfor
  out = U;
endfunction
