
# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
#
# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
#
# use long-form division to track remainders. When a remainder repeats, a recurring cycle has been found. Return the longest recurring cycle for denominators (1..1000). (numerator = 1)

  def cycle_length(n,d)
    remainders = [n.remainder(d) * 10]
    finished = false

    until remainders.include?(remainders.last.remainder(d) * 10)
      remainders << remainders.last.remainder(d) * 10
    end
    return remainders[remainders.index(remainders.last.remainder(d) * 10)..remainders.size - 1].size
  end
  nums = (2..1000)
  cycle_lengths = nums.map{|d| [cycle_length(1, d), d]}.sort
  answer = cycle_lengths.last[1]
  puts answer
