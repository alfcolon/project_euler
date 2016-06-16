require 'Prime'
# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is 10,001st prime number?

  # output the 10,001st prime number
  answer = Prime.first(10001).last
  puts answer
