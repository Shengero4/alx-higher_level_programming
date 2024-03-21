#!/usr/bin/python3
def square_matrix_simple(matrix=[]):
    # Create a new matrix to store the squared values
    new_matrix = []

    # Iterate through each row in the matrix
    for row in matrix:
        # Create a new row for the squared values
        new_row = []
        # Iterate through each element in the row and square it
        for element in row:
            new_row.append(element ** 2)
        # Append the squared row to the new matrix
        new_matrix.append(new_row)

    return new_matrix

# Test the function
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

new_matrix = square_matrix_simple(matrix)
print(new_matrix)
print(matrix)

