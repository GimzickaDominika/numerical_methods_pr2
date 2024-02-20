% "Szcególne" przypadki macierzy - są one zakomentowane aby reszta kodu się wykonała
% macierz nie jest kwadartowa
%A = rand(2,3)
%przedstawBledy(A)
%rozwiazUkladRownan(A)
%macierzOdwrotna(A)
%obliczWyznacznik(A)

%macierz jest osobliwa
%A = [1,2,1;3,-7,-2;2,4,2]
%rozkladDoolittleUL(A)
%rozwiazUkladRownan(A)
%macierzOdwrotna(A)
%obliczWyznacznik(A)

% Macierze różnych rozmiarów
% 3x3 - z wartosciami z przedzialu[0,10]
A = 10 * rand(3,3)
B = rand(3,3)
przedstawBledy(A,B)

% 3x3 - z wartosciami z przedzialu[1000,10000]
A = 9000 * rand(3, 3) + 1000
B = rand(3,3)
przedstawBledy(A,B)

% 10x10 - z wartosciami z przedzialu[0,10]
A = 10 * rand(10,10)
B = rand(10,10)
przedstawBledy(A,B)

% 10x10 - z wartościami z przedziału [1000, 10000]
A = 9000 * rand(10,10) + 1000
B = rand(10,10)
przedstawBledy(A,B)
