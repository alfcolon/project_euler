require 'prime'
# Euler discovered the remarkable quadratic formula:
#
# n² + n + 41
#
# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
#
# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.
#
# Considering quadratics of the form:
#
# n² + an + b, where |a| < 1000 and |b| < 1000
#
# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.


  # find the maximum number of primes for consecutive values of n, starting with n = 0 for each combination
  def prime_count(a,b)
    prime_count = 0
    last_prime = false
    n = 0
    while last_prime == false
      if ((n ** 2) + (a * n) + b).prime?
        prime_count += 1
        n += 1
      else
        last_prime = true
      end
    end
    return prime_count
  end

  # create all possible combinations for a * b
  a_b_combinations = (-1000..1000).to_a.permutation(2).to_a + (1..1000).map {|n| [n, n]}


  max_consecutive_primes = 0
  max_a_b = []
  a_b_combinations.each do |combo|
    consecutive_primes = prime_count(combo[0], combo[1])
    if consecutive_primes > max_consecutive_primes
      max_consecutive_primes = consecutive_primes
      max_a_b = combo
    end
  end

  answer = max_a_b.reduce(:*)
  puts answer
