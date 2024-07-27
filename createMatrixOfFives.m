clc;
function matrix = fives_from_input()
    % Prompt user for number of rows and columns
    rows = input('Enter the number of rows: ');
    cols = input('Enter the number of columns: ');
    
    % Create the matrix filled with fives
    matrix = 5 * ones(rows, cols);
end