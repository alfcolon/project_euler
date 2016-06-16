# Number spiral diagonals
# Problem 28
# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

# for each square value, sum the values of each corner digit in the number spiral.
  def number_spiral_diagonal_sum(square)
    return 1 if square == 1
    value = square ** 2
    sum = 0
    i =  1
    while i <= 4
      sum += value
      # sum << value
      value -= square - 1
      i += 1
    end
    return sum
  end

# for each square, sum the values of each value on the number z-axis of the number spiral.
  sum = 0
  square = 1
  while square <= Math.sqrt(1002001)
    # add diagonal values to sum
      sum += number_spiral_diagonal_sum(square)
    square += 2
  end

  answer = sum
  puts answer
