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
## @deftypefn {} {@var{retval} =} derivative_phi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-12-22

function out = derivative_phi_fraction (I_x, I_y, phi_name)
  norme = sqrt((I_x).^2 + (I_y).^2);
  if (strcmp(phi_name, 'phi_t_square'))
    out = 2 * ones(size(norme));
  elseif (strcmp(phi_name, 'phi_square_root_t'))
    out = 1./sqrt(1+norme.^2);
  else
    out = 'phi_name incorrect';
  endif
endfunction


