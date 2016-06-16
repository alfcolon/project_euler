# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# # Find the product abc.

  # For all sets of numbers from (1..1000) where a < b < c, return the product of each number set where a^2 + b^2 equals the square root of c and a + b + c equals 1000.
  
  def pythagorean_triplet(sum,a,b, c)
    return true if Math.sqrt((a ** 2) + (b ** 2)) == c
  end

  number_combos = (1..1000).to_a.permutation(2).to_a + (1..1000).to_a.map{|n| [n, n]}

  selected_combos = number_combos.select{ |combo| (combo[0] + combo[1] < 1000 && combo[0] < combo[1]) && (1000 - (combo[0] + combo[1])) > combo[1]}

  abc_array = selected_combos.map{|combo| [combo[0], combo[1], (1000 - (combo[0] + combo[1]))]}

  answer = abc_array.select {|triplet| pythagorean_triplet(1000, triplet[0], triplet[1], triplet[2])}

  puts answer[0].reduce(:*)
