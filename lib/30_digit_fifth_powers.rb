# Digit fifth powers
# Problem 30
# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#
# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

# for all numbers from 2..350000, raise the power of each digit to five. 
  num_set = (2..350000).to_a
  digit_to_fifth_power = num_set.map {|n| n.to_s.split("").map {|digit| digit.to_i ** 5 }.reduce(:+)}

# for each number, check if the sum of each digit raised to the fifth power is equal to that number.
  answer = []
  num_set.each_with_index do |num, i|
    answer << num_set[i] if num_set[i] == digit_to_fifth_power[i]
  end
  puts answer.reduce(:+)
