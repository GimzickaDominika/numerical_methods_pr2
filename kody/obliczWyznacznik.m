function [wyznacznik] = obliczWyznacznik(A)
% funkcja ta służy do obliczania wyznacznika macierzy A
% WE:
% A - macierz, której wyznacznik będzie obliczany
% WY:
% wyznacznik - wyznacznik macierzy A

% otrzymanie rozkładu UL macierzy A wcześniej napisaną funkcją
[U,L] = rozkladDoolittleUL(A);

% obliczenie iloczynu wyrazów po głównej przekątnej
wyznacznik = 1;
for i = 1:length(U(1,:))
    wyznacznik = wyznacznik*U(i,i);
end

end