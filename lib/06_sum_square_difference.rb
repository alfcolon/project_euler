# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  numbers = (1..100).to_a
  sum_of_squares = numbers.map{|num| num ** 2}.reduce(:+)
  square_of_sum = (numbers.reduce(:+)) ** 2
  
  answer = square_of_sum - sum_of_squares
  puts answer
