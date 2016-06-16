# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

  # find the product of each number from (1..100) and output the sum of each digit of the product.
  answer = (1..100).reduce(:*).to_s.split("").map(&:to_i).reduce(:+)
  puts answer
