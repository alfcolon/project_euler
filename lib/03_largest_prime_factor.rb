require 'Prime'
# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
  # list all prime factors of 600851475143, output the highest prime factor
  def largest_prime_factor(num)
    num.prime_division.last[0]
  end

  answer = largest_prime_factor(600851475143)
  puts answer
