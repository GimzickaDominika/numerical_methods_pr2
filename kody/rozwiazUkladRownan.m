function [X] = rozwiazUkladRownan(A,B)
% funkcja ta służy do rozwiązywania układu równań liniowych XA=B
% WE:
% A - macierz, której uzyskamy rozkład LU i rozwiążemy rónanie XA=B
% B - macierz będąca prawą stroną w ukladzie rónań XA=B
% WY:
% X - macierz wynikowa układu równań XA=B

% wszystkie warunki jakie musi spełniać macierz A, aby posiadała rozkład są
% sprawdzane w funkcji rozkladDoolitleUL

% otrzymanie rozkładu UL macierzy A wcześniej napisaną funkcją
[U,L] = rozkladDoolittleUL(A);

% rozwiązywanie równania LY=B
Y = B/L;

%rozwiązywanie równania XU=Y
X=Y/U;

end