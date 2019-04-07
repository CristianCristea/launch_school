# Feynman's squares
# Richard Phillips Feynman was a well-known American physicist and a recipient of the Nobel Prize in Physics. He worked in theoretical physics and pioneered the field of quantum computing.

# Recently, an old farmer found some papers and notes that are believed to have belonged to Feynman. Among notes about mesons and electromagnetism, there was a napkin where he wrote a simple puzzle: "how many different squares are there in a grid of NxN squares?".

# For example, when N=2, the answer is 5: the 2x2 square itself, plus the four 1x1 squares in its corners.
# You have to write a function

# def count_squares(n)
# that solves Feynman's question in general. The input to your function will always be a positive integer.

# n = 3
# _ _ _
# _|_|_|
# _|_|_|
# _|_|_|

# math lesson :D
# How many unique squares are there in a 4 x 4 grid?
# Ask the students how many squares are there in a 4x4 grid of squares. Many will answer 16. Tell them that there are more than that.

# After they have had a chance to think about and have yelled out some more answers ask them how many squares there are in a 1x1 grid (1) and in a 2x2 grid (the 4 small squares and the 1 big square = 5) and a 3x3 grid (9 small squares, 4 of the 2x2, and 1 big one = 14).

# So the total for a 4x4 is 16 + 9 + 4 + 1 = 30.
#! The total for any n x n square is (n squared + n-1 squared + n-2 sqaured down to 1 when n = 1.

def count_squares(n)
  (1..n).inject{|sum, e| sum+e*e}
end

#Examples
p count_squares(1) ==  1
p count_squares(2) ==  5
p count_squares(3) == 14
p count_squares(4) == 30