require "Prime"
# Truncatable primes
# Problem 37
# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
#
# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
#
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.


  # iterate through each digit and push number two numbers into truncated_num array, one with the left number removed and one with the right number removed. Return true if all truncated_nums are prime
  def truncatable?(prime)
    truncated_num = []
    digits = prime.to_s.split("")
    digits.each_with_index do |digit,i|
      if i == 0
       truncated_num << digits.join("").to_i
     else
       left = digits[i..digits.size - 1].join("").to_i
       right = digits[0..((digits.size - 1) - i)].join("").to_i

      #  trying to decrease computation by ruling return false immedicately if left or right is not a prime number
       if left.prime? == false || right.prime? == false
         return false
       else
         truncated_num.push(right, left)
       end
      end
    end
    return true if truncated_num.all?{|num| num.prime?}
  end

  # output the first 11 trunctable primes
  truncatable_primes = []

  i = 1
  until truncatable_primes.size == 10
    prime = Prime.first(i).last
    truncatable_primes << prime if truncatable?(prime) && (prime > 10)
    i += 1
  end

  puts truncatable_primes.reduce(:+)
  puts truncatable_primes


  # require 'mathn'
  # require "Prime"
  #
  # def truncatable?(prime)
  #   truncated_num = []
  #   digits = prime.to_s.split("")
  #   digits.each_with_index do |digit,i|
  #     if i == 0
  #      truncated_num << digits.join("").to_i
  #    else
  #      left = digits[i..digits.size - 1].join("").to_i
  #      right = digits[0..((digits.size - 1) - i)].join("").to_i
  #
  #     #  trying to decrease computation by ruling return false immedicately if left or right is not a prime number
  #      if left.prime? == false || right.prime? == false
  #        return false
  #      else
  #        truncated_num.push(right, left)
  #      end
  #     end
  #   end
  #   return true if truncated_num.all?{|num| num.prime?}
  # end
  #
  # prime = Prime.new
  #
  # truncatable_primes = []
  #
  # until truncatable_primes.size == 11
  #   truncatable_primes << prime if truncatable?(prime) && (prime > 10)
  #   prime = primes.succ
  # end
  #
  # puts truncatable_primes.reduce(:+)
  # puts truncatable_primes
