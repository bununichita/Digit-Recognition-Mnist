## Copyright (C) 2021 Andrei
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
## @deftypefn {} {@var{retval} =} pca_cov (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Andrei <Andrei@DESKTOP-PK505U9>
## Created: 2021-09-06

function new_X = task3 (photo, pcs)
  [m, n] = size (photo);
  
  % initializare matrice finala.
  new_X = zeros (m, n);
  
  % TODO: cast photo la double.
  photo = double(photo);
  % TODO: calculeaza media fiecarui rand al matricii.
  m = rows(photo);
  n = columns(photo);
  miu = zeros(m, 1);
  for i = 1:m
    s = sum(photo(i:i, :));
    miu(i) = s / n;
  endfor
  % TODO: normalizeaza matricea initiala scazand din ea media fiecarui rand.
  for i = 1:m
    photo(i, :) -= miu(i);
  endfor
  % TODO: calculeaza matricea de covarianta.
  Z = (photo * photo') / (n - 1);
  % TODO: calculeaza vectorii si valorile proprii ale matricei de covarianta.
  % HINT: functia eig
  [vect, val] = eig(Z);
  % TODO: ordoneaza descrescator valorile proprii si creaza o matrice V
  % formata din vectorii proprii asezati pe coloane, astfel incat prima coloana
  % sa fie vectorul propriu corespunzator celei mai mari valori proprii si
  % asa mai departe.
  sorted = 0;
  while !sorted
    sorted = 1;
    for i = 1:rows(val) - 1
      if val(i, i) < val(i + 1, i + 1)
        aux = val(i, i);
        val(i, i) = val(i + 1, i + 1);
        val(i + 1, i + 1) = aux;
        aux = vect(:, i);
        vect(:, i) = vect(:, i + 1);
        vect(:, i + 1) = aux;
        sorted = 0;
      endif
    endfor
  endwhile
  % TODO: pastreaza doar primele pcs coloane
  % OBS: primele coloane din V reprezinta componentele principale si
  % pastrandu-le doar pe cele mai importante obtinem astfel o compresie buna
  % a datelor. Cu cat crestem numarul de componente principale claritatea
  % imaginii creste, dar de la un numar incolo diferenta nu poate fi sesizata
  % de ochiul uman asa ca pot fi eliminate.
  W = vect(:, 1:pcs);
  % TODO: creaza matricea Y schimband baza matricii initiale.
  Y = W' * photo;
  % TODO: calculeaza matricea new_X care este o aproximatie a matricii initiale
  new_X = W * Y;
  % TODO: aduna media randurilor scazuta anterior.
  for i = 1:m
    new_X(i, :) += miu(i);
  endfor
  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
  new_X = uint8(new_X);
endfunction
