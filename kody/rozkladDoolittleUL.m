function [U,L] = rozkladDoolittleUL(A)
% funkcja ta służy do stworzenia zmodyfikowanego rozkładu Doolitle macierzy A (czyli, A=UL)
% WE:
% A - macierz wejściowa, którą poddamy rozkładowi
% WY:
% U - macierz trójkątna górna
% L - macierz trójkątna dolna z jedynkami na głównej przekątnej

[rows, columns] = size(A);

% sprawdzamy czy macierz jest kwadratowa - jeśli nie to rozkład UL nie istnieje
if rows ~= columns
    error("Macierz nie jest kwadratowa")
end

% sprawdzamy, czy macierz jest nieosobliwa, tzn. det(A)!=0
if det(A)==0
    error("Macierz jest osobliwa")
end

n = rows;
U = zeros(n,n);
L = eye(n);   % inicjalizacja macierzy jednostkowej

% uzupełnianie pierwszego rzędu macierzy U
for i = 1:n
    U(i,n) = A(i,n);
end

% uzupełnianie ostatniego rzedu macierzy L
for i = 1:n-1
    L(n,i) = A(n,i)/U(n,n);
end

for i = n-1:-1:1
    % obliczanie dla macierzy U
    for j = i:-1:1
        sum = 0;
        for k = n:-1:i+1
            sum = sum + L(k,i)*U(j,k);
        end
        U(j,i) = A(j,i) - sum;
        
        % sprawdzanie czy któryś z głównych minorów macierzy U jest równy 0,
        % ponieważ w takim przypadku przy obliczaniu elementów macierzy L 
        % wystepuje dzielenie przez 0. Zatem rozkład UL wtedy nie istnieje.
        if U(i,i)==0
            error("Jeden z głównych minorów macierzy U równy 0 -> rozkład UL nie istnieje")
        end

    end

    % obliczenia dla macierzy L
    for j = i-1:-1:1
        sum = 0;
        for k = n:-1:i+1
            sum = sum + L(k,j)*U(i,k);
        end
        L(i,j) = (A(i,j) - sum) / U(i,i);
    end
end

end