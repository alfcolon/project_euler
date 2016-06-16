require 'prime'
# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  # from 2..20 list out the lowest prime factors (excluding 1) of each number as such
    # (2..4) 2 x 3 x 2 (because 4 is 2 x 2 and there is already one 2, include only the remaining 2)
  lowest_prime_factors = []
  (2..20).each do |num|
    num.prime_division.each do |divisor|
      lowest_prime_factors << divisor[0] if lowest_prime_factors.count(divisor[0]) < divisor[1]
    end
  end

  # output the product of the lowest prime factors
  answer = lowest_prime_factors.reduce(:*)
  puts answer
