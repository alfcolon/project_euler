# # A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# #
# # A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
# #
# # As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
# #
#
# subtract array of intergers from array of abundant_sums
  def abundant?(num)
    return false if num == 1
    divisor_sum = (1..num/2).select {|divisor| num % divisor == 0}.reduce(:+)
    return true if divisor_sum > num
  end

  def abundant_sums(limit)
    abundant_nums = (1..limit).select{|num| abundant?(num)}
    abundant_sums = []
    i = 0
    while i < abundant_nums.length - 1
      j =  0
      while j < abundant_nums.length - 1
        abundant_sums << abundant_nums[i] + abundant_nums[j]
        j += 1
      end
      i += 1
    end
    return abundant_sums
  end

  num_set = (1..28123).to_a
  answer = (num_set - abundant_sums(28123)).reduce(:+)
  puts answer
