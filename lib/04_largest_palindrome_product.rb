# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

  # test if number is palindrome
  def palindrome?(num)
    num_str = num.to_s.split("")
    i = 0
    while i < num_str.length
      if num_str[i] != num_str[(num_str.length - 1) - i]
        return false
      end
      i += 1
    end
    return true
  end

  # create combinations of two three digit numbers
  products_of_two_three_digit_numbers = (100..999).to_a.combination(2).to_a.map{|combo| combo.reduce(:*)}

  # create array of palindromes
  palindromes = products_of_two_three_digit_numbers.select{|n| palindrome?(n)}

  # output the largest palindrome
  answer = palindromes.max
  puts answer
