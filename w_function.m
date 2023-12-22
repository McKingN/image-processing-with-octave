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
## @deftypefn {} {@var{retval} =} w_function (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-22

function out = w_function (U, U_0, lambda, phi_name)
  [U_x, U_y] = compute_derivatives(U);
  fraction = derivative_phi_fraction(U_x, U_y, phi_name);
  if (!strcmp(fraction, 'phi_name incorrect'))
    out = (U - U_0) - lambda*(divergence_operator(fraction.*U_x, fraction.*U_y));
  else
    out = fraction;
  endif
endfunction

