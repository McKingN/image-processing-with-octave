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
## @deftypefn {} {@var{retval} =} boundary (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: McKing <McKing@DESKTOP-4Q7G3QP>
## Created: 2023-11-30

function B = boundary (A, d)
  %Extension of an A by reflection symmetry (for d pixels)
  %Neumann Conditions
  %Syntaxe: bord (A,d)
  [m, n]= size(A);
  %Create the matrice B with the right size
  M=m+2*d;
  N=n+2*d;
  B= zeros(M,N);
  B(d+1:M-d, d+1:N-d)=A;
  %Extension by a reflection symmetry
  for i=1:m
    for j=1:d B(i+d,j)=A(i,d-j+1); end ;
    for j=N-d+1:N B(i+d,j)=A(i,n+N-j-d+1); end; % Correction ici
  end;
  for j=1:N
    for i=1:d B(i,j)=B(2*d-i+1,j); end ;
    for i=M-d+1:M B(i,j)=B(2*M-i-2*d+1,j); end ; % Correction ici
  end;
endfunction
