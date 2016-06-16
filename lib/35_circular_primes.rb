require 'Prime'
# Circular primes
# Problem 35
# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
#
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
#
# How many circular primes are there below one million?

# create array of primes < 1000000, select primes that are circular

  def circular?(prime_arr)
    limit = prime_arr.length - 1
    prime_rotations = (0..limit).to_a.map {|rotation| prime_arr.rotate(rotation).join.to_i}
    return prime_rotations.all?{|n| n.prime?}
  end

  def circular_primes(limit)
    primes = Prime.each(limit).to_a
    circular = primes.select do |prime|
      prime_arr = prime.to_s.split("")
      circular?(prime_arr)
    end
    return circular
  end

  puts circular_primes(1000000).length
