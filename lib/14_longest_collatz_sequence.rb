# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million

  # from 1..999999, output the longest Collatz chain
  final_count = 0
  longest_n = 0

  starting_number = 999999
  while starting_number >= 2
    sequence_n = starting_number
    sequence_count = 0   # counts the amount of sequences n has
    until sequence_n == 1
      sequence_n % 2 == 0 ? sequence_n /= 2 : sequence_n = (sequence_n * 3) + 1
      sequence_count += 1
    end
    final_count,longest_n = sequence_count, starting_number if sequence_count > final_count

    starting_number -= 1
  end

  answer = [longest_n, final_count]
  puts answer[0]
