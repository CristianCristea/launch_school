
# Transpose 3x3
# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements.
# The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# return a new array of arrays(matrix) with the matrix rows changed with columns
# loop 3 times and return a new array
# use map.with_index
# return each new elem [matrix[0][i], matrix[1][index], matrix[2][index]]

def transpose(matrix)
  matrix.map.with_index { |_, i| [matrix[0][i], matrix[1][i], matrix[2][i]] }
end

# Examples
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]