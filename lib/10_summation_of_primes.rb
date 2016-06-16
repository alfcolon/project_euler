require 'Prime'
  # # Summation of primes
  # Problem 10
  #   The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
  #

# Output the sum of all the primes below two million.
  primes = []
  Prime.each(2000000) do |prime|
    primes << prime
  end

  answer = primes.reduce(:+)
  puts answer
