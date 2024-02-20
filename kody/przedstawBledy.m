function [] = przedstawBledy(A,B)
% Obliczamy rozkład A=UL
[U, L] = rozkladDoolittleUL(A);

% Sprawdzamy poprawność rozkładu UL
A_byUL = U*L;

% Obliczanie równania liniowego XA=B
X_byUL = rozwiazUkladRownan(A,B);
B_byUL = X_byUL*A;

% Obliczamy macierz odwrotną na podstawie rozkładu
A_inv_byUL = macierzOdwrotna(A);

% Obliczamy wyznacznik macierzy A na podstawie rozkładu
det_A_byUl = obliczWyznacznik(A);

% Obliczamy macierz odwrotną za pomocą wbudowanej funkcji inv
A_inv_builtin = inv(A);

% Obliczamy wyznacznik za pomocą wbudowanej funkcji det
det_A_builtin = det(A);

% Wyświetlamy wyniki
disp('Macierz A:');
disp(A);

disp('Rozkład A = UL:');
disp('U:');
disp(U);
disp('L:');
disp(L);

disp('Sprawdzanie poprawności rozkładu UL');
disp('U*L:')
disp(A_byUL);
disp('Macierz A:');
disp(A);

disp("-------------------------------------");
disp('Macierz X z układu równanń XA=B obliczony za pomocą rozkładu UL:')
disp(X_byUL);
disp('Macierz XA:');
disp(X_byUL*A);
disp('Wejściowa macierz B:');
disp(B);

disp("-------------------------------------");
disp('Macierz odwrotna do A obliczona na podstawie rozkładu A = UL:');
disp(A_inv_byUL);
disp('Macierz odwrotna do A obliczona za pomocą funkcji inv:');
disp(A_inv_builtin);

disp("-------------------------------------");
disp('Wyznacznik macierzy A obliczony na podstawie rozkładu A = UL:');
disp(det_A_byUl);
disp('Wyznacznik macierzy A obliczony za pomocą funkcji det:');
disp(det_A_builtin);

disp("-------------------------------------");
disp("Błędy obliczania rozkładu UL");
disp('Błąd bezwzględny:');
disp(abs(A_byUL - A));
disp('Błąd względny:');
disp(abs( (A_byUL - A)/A) );
disp("-------------------------------------");
disp("Błędy rozwiązywania układu równań liniowych XA=B");
disp('Błąd bezwzględny:');
disp(abs(B_byUL - B));
disp('Błąd względny:');
disp(abs( (B_byUL - B)/B) );
disp("-------------------------------------");
disp("Błędy obliczania macierzy odwrotnej");
disp('Błąd bezwzględny:');
disp(abs(A_inv_byUL - A_inv_builtin));
disp('Błąd względny:');
disp(abs( (A_inv_byUL - A_inv_builtin)/A_inv_builtin) );
disp("-------------------------------------");
disp("Błędy obliczania wyznacznika");
disp('Błąd bezwzględny:');
disp(abs(det_A_byUl - det_A_builtin));
disp('Błąd względny:');
disp(abs( (det_A_byUl - det_A_builtin)/det_A_builtin) );
disp("-------------------------------------");
end