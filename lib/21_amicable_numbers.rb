# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
  def divisors(n)
    divisors = (1..(n/2)).select {|d| n % d == 0}
    return divisors
  end
  def divisor_sum(divisors)
    divisors.reduce(:+)
  end

  numbers = []
  (2..10000).each {|num| numbers << num if num ==  divisor_sum(divisors(divisor_sum(divisors(num)))) unless num == divisor_sum(divisors(num))}

 answer = numbers.reduce(:+)
 puts answer
