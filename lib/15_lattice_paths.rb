# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.

# (see webstie for illustration)

# How many such routes are there through a 20×20 grid?

# divide the number of permutations by the the factorial of bottom moves * right moves
  def square_grid_paths(n)
    ((1..(2 * n)).reduce(:*)) / ((1..n).reduce(:*) ** 2)
  end

  answer = square_grid_paths(20)
  puts answer
