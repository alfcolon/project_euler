# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# return sum of all numbers from 1...1000 that are divisible by 3 and 5
def multiples(number1, number2, range1, range2)
  (range1...range2).select { |value| value % number1 == 0 || value % number2 == 0  }.reduce(:+)
end

puts multiples(3, 5, 0, 1000)
