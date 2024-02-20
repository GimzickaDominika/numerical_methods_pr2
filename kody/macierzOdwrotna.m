function [invA] = macierzOdwrotna(A)
% funkcja ta służy do stworzenia macierzy odwrotnej do A
% WE:
% A - macierz do odwrócenia 
% WY:
% invA - macierz odwrotna do A

% generujemy macierz jednostkowa
I = eye(length(A(1,:)));

% obliczamy równanie invA*A=I za pomocą funkcji napisanej wcześniej
invA = rozwiazUkladRownan(A,I);

end