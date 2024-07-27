% Coefficients matrix A and constants vector b
A = [2, 3, -1;
     4, -1, 2;
     -3, 2, 1];
b = [5; 6; -4];

% Calculate the determinant of A
detA = det(A);

% Check if the determinant of A is zero (to avoid division by zero)
if detA == 0
    error('The determinant of the coefficient matrix A is zero. Cramer''s method cannot be applied.');
end

% Initialize solutions x, y, z
x = zeros(3, 1);

% Calculate x, y, z using Cramer's rule
for i = 1:3
    % Create a copy of A and replace i-th column with b
    Ai = A;
    Ai(:, i) = b;
    
    % Calculate determinant of Ai
    detAi = det(Ai);
    
    % Calculate xi = det(Ai) / det(A)
    x(i) = detAi / detA;
end

% Display the solutions
fprintf('Solution:\n');
fprintf('x = %.4f\n', x(1));
fprintf('y = %.4f\n', x(2));
fprintf('z = %.4f\n', x(3));
