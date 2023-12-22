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
## @deftypefn {} {@var{retval} =} energy_methods (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-22

function out = energy_methods (U_0, alpha, lambda, seuil, phi_name)
  U = U_0;
  n = 0;
  d_n = w_function(U, U_0, lambda, phi_name);
  while max(abs(d_n(:))) > seuil
    n
    max_d = max(abs(d_n(:)))
    U = U - alpha*d_n;
    d_n = w_function(U, U_0, lambda, phi_name);
    n = n + 1;
    if (mod(n, 1000) == 0)
      figure(n + 2);
      colormap gray;
      imagesc(U);
      difference_debug = norm(U_0 - U, 2)
    endif
  endwhile
  out = U;
endfunction


